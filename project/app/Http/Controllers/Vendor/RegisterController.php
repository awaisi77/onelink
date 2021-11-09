<?php

namespace App\Http\Controllers\Vendor;

use App\City;
use App\Classes\HelperFunction;
use App\Contact;
use App\State;
use App\VendorDetail;
use App\WorldCountry;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\User;
use App\Classes\ActiveHouseMailer;
use App\Models\Notification;
use Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Log;
use Validator;

class RegisterController extends Controller
{
    public function showRegisterForm()
    {
        $this->code_image();
        return view('vendor.login');
    }


    public function showBusinessForm(Request $request)
    {
        $user = $request['user'];
        return view('vendor.business-register', compact('user'));
    }

    public function registerBusiness(Request $request)
    {
        Log::info(json_encode($request->all()));
        try {
            $rules = [
                'business_status' => 'required',
                'company_name' => 'required',
                'address_country' => 'required|string',
                'address_city' => 'required',
                'address_state' => 'required|string',
                'address_street' => 'required|string',
                'business_nature' => 'required|string',
                'industry_of_work' => 'required|string',
                'company_email' => 'required|string|email',
                'company_website' => 'required|string',
                'country_of_incorporation' => 'required|string',
                'ntn_strn' => 'required|string',
                'contact_name' => 'required|string',
                'contact_title' => 'required|string',
                'contact_phone' => 'required|string',
                'contact_fax' => 'required|string',
                'contact_email' => 'required|string|email',
            ];
            $validator = Validator::make(Input::all(), $rules);
            if ($validator->fails()) {
                return redirect()->back()->with(array('errors' => $validator->errors()));
            }

            $vendorDetails = VendorDetail::create([
                'user_id' => $request['user_id'],
                'business_status' => $request['business_status'],
                'company_name' => $request['company_name'],
                'address_country' => $request['address_country'],
                'address_city' => $request['address_city'],
                'address_state' => $request['address_state'],
                'address_street' => $request['address_street'],
                'business_nature' => $request['business_nature'],
                'industry_of_work' => $request['industry_of_work'],
                'company_email' => $request['company_email'],
                'company_website' => $request['company_website'],
                'country_of_incorporation' => $request['country_of_incorporation'],
                'country_of_business' => '',
                'ntn_strn' => $request['ntn_strn'],
                'parent_company' => '',
                'associated_company' => '',
                'enlisted_on_platform' => false,
            ]);
            $contact = Contact::create([
                'name' => $request['contact_name'],
                'title' => $request['contact_title'],
                'phone' => $request['contact_phone'],
                'fax_number' => $request['contact_fax'],
                'email' => $request['contact_email'],
                'vendor_details_id' => $vendorDetails->id
            ]);

            $user = User::find($request['user_id']);
            Auth::guard('web')->login($user);

            $user->shop_name = $request['company_name'];
            $user->shop_number = $request['company_name'];
            $user->owner_name = $user->name;
            $user->update();
            return redirect()->route('user-package');
        } catch (\Exception $exception) {
            Log::error($exception->getMessage());
            return redirect()->back()->with(array('error' => $exception->getMessage()));
        }
    }

    public function register(Request $request)
    {
        try {
            $gs = Generalsetting::findOrFail(1);
            if ($gs->is_capcha == 1) {
                $value = session('captcha_string');
                if ($request->codes != $value) {
                    return redirect()->back()->with((array('errors' => [0 => 'Please enter Correct Capcha Code.'])));
                }
            }
            //--- Validation Section
            $rules = [
                'email' => 'required|email|unique:users',
                'phone' => 'required',
                'dob' => 'required|date',
                'gender' => 'required',
                'first_name' => 'required|string',
                'last_name' => 'required|string',
                'password' => 'required|confirmed'
            ];
            $validator = Validator::make(Input::all(), $rules);

            if ($validator->fails()) {

                return redirect()->back()->with(['errors' => $validator->errors()]);
                //return redirect()->back()->with('unsuccess', $validator->getMessageBag()->toArray());
            }
            //--- Validation Section Ends


            $user = new User;
            $input = $request->all();
            $input['password'] = bcrypt($request['password']);
            $input['name'] = $request['first_name'] . ' ' . $request['last_name'];
            $token = md5(time() . $request->name . $request->email);
            $input['verification_link'] = $token;
            $input['affilate_code'] = md5($request->name . $request->email);
            $input['is_vendor'] = 1;

            $user->fill($input)->save();
            if ($gs->is_verification_email == 1) {
                $to = $request->email;
                $subject = 'Verify your email address.';
                $msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=" . url('user/register/verify/' . $token) . ">Simply click here to verify. </a>";
                //Sending Email To Customer
                if ($gs->is_smtp == 1) {
                    $data = [
                        'to' => $to,
                        'subject' => $subject,
                        'body' => $msg,
                    ];

                    $mailer = new ActiveHouseMailer();
                    $mailer->sendCustomMail($data);
                } else {
                    $headers = "From: " . $gs->from_name . "<" . $gs->from_email . ">";
                    mail($to, $subject, $msg, $headers);
                }
                return redirect()->back()->with(['success' => "Verify your email first."]);
            } else {

                $user->email_verified = 'Yes';
                $user->update();
                $notification = new Notification;
                $notification->user_id = $user->id;
                $notification->save();
                //   Auth::guard('web')->login($user);

                return redirect()->route('vendor-business-register', ['user' => $user->id]);
            }
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            return redirect()->back()->with(array('error' => $e->getMessage()));
        }
    }

    public function profileupdate(Request $request)
    {
        try {
            //--- Validation Section
            $rules = [
                'business_status' => 'required',
                'company_name' => 'required',
                'address_country' => 'required|string',
                'address_city' => 'required',
                'address_state' => 'required|string',
                'address_street' => 'required|string',
                'business_nature' => 'required|string',
                'industry_of_work' => 'required|string',
                'company_email' => 'required|string|email',
                'company_website' => 'required|string',
                'country_of_incorporation' => 'required|string',
                'ntn_strn' => 'required|string',
                'contact_name' => 'required|string',
                'contact_title' => 'required|string',
                'contact_phone' => 'required|string',
                'contact_fax' => 'required|string',
                'contact_email' => 'required|string|email',
            ];

            $validator = Validator::make(Input::all(), $rules);

            if ($validator->fails()) {
                return response()->json(array('errors' => $validator->errors()));
            }
            //--- Validation Section Ends

            $input = $request->all();
            $data = Auth::user();
            $vendorDetails = VendorDetail::where('user_id', $data->id)->first();
            if (!empty($vendorDetails)) {
                $vendorDetails->update([
                    'user_id' => $request['user_id'],
                    'business_status' => $request['business_status'],
                    'company_name' => $request['company_name'],
                    'address_country' => $request['address_country'],
                    'address_city' => $request['address_city'],
                    'address_state' => $request['address_state'],
                    'address_street' => $request['address_street'],
                    'business_nature' => $request['business_nature'],
                    'industry_of_work' => $request['industry_of_work'],
                    'company_email' => $request['company_email'],
                    'company_website' => $request['company_website'],
                    'country_of_incorporation' => $request['country_of_incorporation'],
                    'ntn_strn' => $request['ntn_strn'],
                ]);
                $contact = Contact::where('vendor_details_id', $vendorDetails->id)->first();
                if (!empty($contact)) {
                    $contact->update([
                        'name' => $request['contact_name'],
                        'title' => $request['contact_title'],
                        'phone' => $request['contact_phone'],
                        'fax_number' => $request['contact_fax'],
                        'email' => $request['contact_email'],
                        'vendor_details_id' => $vendorDetails->id
                    ]);
                } else {
                    $contact = Contact::create([
                        'name' => $request['contact_name'],
                        'title' => $request['contact_title'],
                        'phone' => $request['contact_phone'],
                        'fax_number' => $request['contact_fax'],
                        'email' => $request['contact_email'],
                        'vendor_details_id' => $vendorDetails->id
                    ]);
                }
            } else {
                $vendorDetails = VendorDetail::create([
                    'user_id' => $request['user_id'],
                    'business_status' => $request['business_status'],
                    'company_name' => $request['company_name'],
                    'address_country' => $request['address_country'],
                    'address_city' => $request['address_city'],
                    'address_state' => $request['address_state'],
                    'address_street' => $request['address_street'],
                    'business_nature' => $request['business_nature'],
                    'industry_of_work' => $request['industry_of_work'],
                    'company_email' => $request['company_email'],
                    'company_website' => $request['company_website'],
                    'country_of_incorporation' => $request['country_of_incorporation'],
                    'ntn_strn' => $request['ntn_strn'],
                ]);
                $contact = Contact::create([
                    'name' => $request['contact_name'],
                    'title' => $request['contact_title'],
                    'phone' => $request['contact_phone'],
                    'fax_number' => $request['contact_fax'],
                    'email' => $request['contact_email'],
                    'vendor_details_id' => $vendorDetails->id
                ]);
            }
            $msg = 'Successfully updated your profile';

            $data->shop_name = $request['company_name'];
            $data->shop_number = $request['company_name'];
            $data->owner_name = $data->name;
            $data->update();

            return response()->json($msg);
        } catch (\Exception $exception) {
            $msg = 'Error updating your profile';
            Log::error($exception->getMessage());
            return response()->json($msg);
        }
    }


    public function token($token)
    {
        $gs = Generalsetting::findOrFail(1);

        if ($gs->is_verification_email == 1) {
            $user = User::where('verification_link', '=', $token)->first();
            if (isset($user)) {
                $user->email_verified = 'Yes';
                $user->update();
                $notification = new Notification;
                $notification->user_id = $user->id;
                $notification->save();
                Auth::guard('web')->login($user);
                return redirect()->route('user-dashboard')->with('success', 'Email Verified Successfully');
            }
        } else {
            return redirect()->back();
        }
    }

    // Capcha Code Image
    private function code_image()
    {
        $actual_path = str_replace('project', '', base_path());
        $image = imagecreatetruecolor(200, 50);
        $background_color = imagecolorallocate($image, 255, 255, 255);
        imagefilledrectangle($image, 0, 0, 200, 50, $background_color);

        $pixel = imagecolorallocate($image, 0, 0, 255);
        for ($i = 0; $i < 500; $i++) {
            imagesetpixel($image, rand() % 200, rand() % 50, $pixel);
        }

        $font = $actual_path . 'assets/front/fonts/NotoSans-Bold.ttf';
        $allowed_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        $length = strlen($allowed_letters);
        $letter = $allowed_letters[rand(0, $length - 1)];
        $word = '';
        //$text_color = imagecolorallocate($image, 8, 186, 239);
        $text_color = imagecolorallocate($image, 0, 0, 0);
        $cap_length = 6;// No. of character in image
        for ($i = 0; $i < $cap_length; $i++) {
            $letter = $allowed_letters[rand(0, $length - 1)];
            imagettftext($image, 25, 1, 35 + ($i * 25), 35, $text_color, $font, $letter);
            $word .= $letter;
        }
        $pixels = imagecolorallocate($image, 8, 186, 239);
        for ($i = 0; $i < 500; $i++) {
            imagesetpixel($image, rand() % 200, rand() % 50, $pixels);
        }
        session(['captcha_string' => $word]);
        imagepng($image, $actual_path . "assets/images/capcha_code.png");
    }


    public function getCountries(){
      $countries = WorldCountry::all();
      return response()->json($countries);
    }

    public function getCountryState(Request $request){
        $states = State::where('country_id',$request['country'])->get();
        return response()->json($states);
    }
    public function getStateCities(Request $request){
        $cities = City::where('state_id',$request['state'])->get();
        return response()->json($cities);
    }
}
