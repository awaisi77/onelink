<?php

namespace App\Http\Controllers\Admin;

use App\Contact;
use App\Models\Notification;
use App\Models\Subscription;
use Carbon\Carbon;
use Datatables;
use App\Classes\ActiveHouseMailer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Generalsetting;
use App\Models\Withdraw;
use App\Models\Currency;
use App\Models\UserSubscription;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Validator;


class VendorController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }


    public function createVendor()
    {

        $subs = Subscription::all();

        return view('admin.vendor.create_vendor', compact('subs'));
    }

    public function submitVendor(Request $request)
    {


        $gs = Generalsetting::findOrFail(1);

        //--- Validation Section

        $rules = [
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed'
        ];
        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        $user = new User;
        $input = $request->all();
        $input['password'] = bcrypt($request['password']);
        $token = md5(time() . $request->name . $request->email);
        $input['verification_link'] = $token;
        $input['affilate_code'] = md5($request->name . $request->email);

        //--- Validation Section
        $rules = [
            'shop_name' => 'unique:users',
            'shop_number' => 'max:10'
        ];
        $customs = [
            'shop_name.unique' => 'This Shop Name has already been taken.',
            'shop_number.max' => 'Shop Number Must Be Less Then 10 Digit.'
        ];

        $validator = Validator::make(Input::all(), $rules, $customs);
        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        $input['is_vendor'] = 1;


        $user->fill($input)->save();
        /* if($gs->is_verification_email == 1)
         {
             $to = $request->email;
             $subject = 'Verify your email address.';
             $msg = "Dear Customer,<br> We noticed that you need to verify your email address. <a href=".url('user/register/verify/'.$token).">Simply click here to verify. </a>";
             //Sending Email To Customer
             if($gs->is_smtp == 1)
             {
                 $data = [
                     'to' => $to,
                     'subject' => $subject,
                     'body' => $msg,
                 ];

                 $mailer = new ActiveHouseMailer();
                 $mailer->sendCustomMail($data);
             }
             else
             {
                 $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
                 mail($to,$subject,$msg,$headers);
             }
             return response()->json('We need to verify your email address. We have sent an email to '.$to.' to verify your email address. Please click link in that email to continue.');
         }
         else {*/

        $user->email_verified = 'Yes';
        $user->update();
        $notification = new Notification;
        $notification->user_id = $user->id;
        $notification->save();

        //  return response()->json(1);
        // }


        //dd($user);

        // $user = Auth::user();
        $package = $user->subscribes()->where('status', 1)->orderBy('id', 'desc')->first();
        $subs = Subscription::findOrFail($request->subs_id);
        $settings = Generalsetting::findOrFail(1);
        $today = Carbon::now()->format('Y-m-d');
        $input = $request->all();
        $user->is_vendor = 2;
        $user->date = date('Y-m-d', strtotime($today . ' + ' . $subs->days . ' days'));
        $user->mail_sent = 1;
        $user->update($input);
        $sub = new UserSubscription;
        $sub->user_id = $user->id;
        $sub->subscription_id = $subs->id;
        $sub->title = $subs->title;
        $sub->currency = $subs->currency;
        $sub->currency_code = $subs->currency_code;
        $sub->price = $subs->price;
        $sub->days = $subs->days;
        $sub->allowed_products = $subs->allowed_products;
        $sub->details = $subs->details;
        $sub->method = 'Free';
        $sub->status = 1;
        $sub->save();
        if ($settings->is_smtp == 1) {
            $data = [
                'to' => $user->email,
                'type' => "vendor_accept",
                'cname' => $user->name,
                'oamount' => "",
                'aname' => "",
                'aemail' => "",
                'onumber' => "",
            ];
            $mailer = new ActiveHouseMailer();
            $mailer->sendAutoMail($data);
        } else {
            $headers = "From: " . $settings->from_name . "<" . $settings->from_email . ">";
            mail($user->email, 'Your Vendor Account Activated', 'Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.', $headers);
        }


        $user->verifies()->create(['admin_warning' => 0,
            'warning_reason' => 'Account Verified', 'status' => 'Verified']);

        return redirect()->route('admin-vendor-index');


    }

    //*** JSON Request
    public function datatables(Request $request)
    {

        if (!empty($request->from_date) && !empty($request->status)) {
            if ($request->status != '-1') {
                $datas = User::where('is_vendor', '=', $request->status)
              //  ->orWhere('is_vendor', '=', 1)
                //    ->where('status', $request->status)
                    ->whereBetween('created_at', array($request->from_date, $request->to_date))
                    ->orderBy('id', 'desc')->get();
            } else {
                $datas = User::where('is_vendor', '=',  $request->status)
                    //->orWhere('is_vendor', '=', 1)
                    ->whereBetween('created_at', array($request->from_date, $request->to_date))
                    ->orderBy('id', 'desc')->get();
            }
        } else if ($request->status != '' || $request->status != null) {
            if ($request->status != '-1') {
              //  dd($request->status);
                $datas = User::
                where('is_vendor', '=',  $request->status)
                    //->orWhere('is_vendor', '=', 1)
                    //->where('status', $request->status)
                    ->orderBy('id', 'desc')->get();
            } else {
                $datas = User::where('is_vendor', '=', 2)->orWhere('is_vendor', '=', 1)->orderBy('id', 'desc')->get();
            }

        } else {
            $datas = User::where('is_vendor', '=', 2)->orWhere('is_vendor', '=', 1)->orderBy('id', 'desc')->get();
        }


        // $datas = User::where('is_vendor','=',2)->orWhere('is_vendor','=',1)->orderBy('id','desc')->get();
        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->addColumn('status', function (User $data) {
                $class = $data->is_vendor == 2 ? 'drop-success' : 'drop-danger';
                $s = $data->is_vendor == 2 ? 'selected' : '';
                $ns = $data->is_vendor == 1 ? 'selected' : '';
                return '<div class="action-list"><select class="process select vendor-droplinks ' . $class . '">' .
                    '<option value="' . route('admin-vendor-st', ['id1' => $data->id, 'id2' => 2]) . '" ' . $s . '>Activated</option>' .
                    '<option value="' . route('admin-vendor-st', ['id1' => $data->id, 'id2' => 1]) . '" ' . $ns . '>Deactivated</option></select></div>';
            })
            ->addColumn('action', function (User $data) {
                return '<div class="godropdown"><button class="go-dropdown-toggle"> Actions<i class="fas fa-chevron-down"></i></button><div class="action-list"><a href="' . route('admin-vendor-secret', $data->id) . '" > <i class="fas fa-user"></i> Secret Login</a><a href="javascript:;" data-href="' . route('admin-vendor-verify', $data->id) . '" class="verify" data-toggle="modal" data-target="#verify-modal"> <i class="fas fa-question"></i> Ask For Verification</a><a href="' . route('admin-vendor-show', $data->id) . '" > <i class="fas fa-eye"></i> Details</a><a data-href="' . route('admin-vendor-edit', $data->id) . '" class="edit" data-toggle="modal" data-target="#modal1"> <i class="fas fa-edit"></i> Edit</a><a href="javascript:;" class="send" data-email="' . $data->email . '" data-toggle="modal" data-target="#vendorform"><i class="fas fa-envelope"></i> Send Email</a><a href="javascript:;" data-href="' . route('admin-vendor-delete', $data->id) . '" data-toggle="modal" data-target="#confirm-delete" class="delete"><i class="fas fa-trash-alt"></i> Delete</a></div></div>';
            })
            ->rawColumns(['status', 'action'])
            ->toJson(); //--- Returning Json Data To Client Side
    }

    //*** GET Request
    public function index()
    {
        return view('admin.vendor.index');
    }

    //*** GET Request
    public function color()
    {
        return view('admin.generalsetting.vendor_color');
    }

    //*** GET Request
    public function subsdatatables(Request $request)
    {
        if (!empty($request->from_date)) {
            $datas = UserSubscription::where('status', '=', 1)
                ->whereBetween('created_at', array($request->from_date, $request->to_date))
                ->orderBy('id', 'desc')->get();
        } else {
            $datas = UserSubscription::where('status', '=', 1)->orderBy('id', 'desc')->get();
        }

        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->addColumn('name', function (UserSubscription $data) {
                $name = isset($data->user->owner_name) ? $data->user->owner_name : 'Removed';
                return $name;
            })
            ->editColumn('txnid', function (UserSubscription $data) {
                $txnid = $data->txnid == null ? 'Free' : $data->txnid;
                return $txnid;
            })
            ->editColumn('created_at', function (UserSubscription $data) {
                $date = $data->created_at->diffForHumans();
                return $date;
            })
            ->addColumn('action', function (UserSubscription $data) {
                return '<div class="action-list"><a data-href="' . route('admin-vendor-sub', $data->id) . '" class="view details-width" data-toggle="modal" data-target="#modal1"> <i class="fas fa-eye"></i>Details</a></div>';
            })
            ->rawColumns(['action'])
            ->toJson(); //--- Returning Json Data To Client Side


    }


    //*** GET Request
    public function subs()
    {

        return view('admin.vendor.subscriptions');
    }

    //*** GET Request
    public function sub($id)
    {
        $subs = UserSubscription::findOrFail($id);
        return view('admin.vendor.subscription-details', compact('subs'));
    }

    //*** GET Request
    public function status($id1, $id2)
    {
        $user = User::findOrFail($id1);
        $user->is_vendor = $id2;
        $user->update();
        //--- Redirect Section
        $msg[0] = 'Status Updated Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends

    }

    //*** GET Request
    public function edit($id)
    {
        $data = User::findOrFail($id);
        return view('admin.vendor.edit', compact('data'));
    }


    //*** GET Request
    public function verify($id)
    {
        $data = User::findOrFail($id);
        return view('admin.vendor.verification', compact('data'));
    }

    //*** POST Request
    public function verifySubmit(Request $request, $id)
    {
        $settings = Generalsetting::find(1);
        $user = User::findOrFail($id);
        $user->verifies()->create(['admin_warning' => 1, 'warning_reason' => $request->details]);

        if ($settings->is_smtp == 1) {
            $data = [
                'to' => $user->email,
                'type' => "vendor_verification",
                'cname' => $user->name,
                'oamount' => "",
                'aname' => "",
                'aemail' => "",
                'onumber' => "",
            ];
            $mailer = new ActiveHouseMailer();
            $mailer->sendAutoMail($data);
        } else {
            $headers = "From: " . $settings->from_name . "<" . $settings->from_email . ">";
            mail($user->email, 'Request for verification.', 'You are requested verify your account. Please send us photo of your passport.Thank You.', $headers);
        }

        $msg = 'Verification Request Sent Successfully.';
        return response()->json($msg);
    }

    //*** POST Request
    public function update(Request $request, $id)
    {
        //--- Validation Section
        $rules = [
            'shop_name' => 'unique:users,shop_name,' . $id,
        ];
        $customs = [
            'shop_name.unique' => 'Shop Name "' . $request->shop_name . '" has already been taken. Please choose another name.'
        ];

        $validator = Validator::make(Input::all(), $rules, $customs);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        $user = User::findOrFail($id);
        $data = $request->all();
        $user->update($data);
        $msg = 'Vendor Information Updated Successfully.';
        return response()->json($msg);
    }

    //*** GET Request
    public function show($id)
    {
        $data = User::findOrFail($id);
        if(!empty($data->vendorDetail)){
           $contact = Contact::where('vendor_details_id',$data->vendorDetail->id)->first();
        }else{
            $contact =null;
        }
        return view('admin.vendor.show', compact('data','contact'));
    }


    //*** GET Request
    public function secret($id)
    {
        Auth::guard('web')->logout();
        $data = User::findOrFail($id);
        Auth::guard('web')->login($data);
        return redirect()->route('vendor-dashboard');
    }


    //*** GET Request
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->is_vendor = 0;
        $user->is_vendor = 0;
        $user->shop_name = null;
        $user->shop_details = null;
        $user->owner_name = null;
        $user->shop_number = null;
        $user->shop_address = null;
        $user->reg_number = null;
        $user->shop_message = null;
        $user->update();
        if ($user->notivications->count() > 0) {
            foreach ($user->notivications as $gal) {
                $gal->delete();
            }
        }
        //--- Redirect Section
        $msg = 'Vendor Deleted Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** JSON Request
    public function withdrawdatatables()
    {
        $datas = Withdraw::where('type', '=', 'vendor')->orderBy('id', 'desc')->get();
        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->addColumn('name', function (Withdraw $data) {
                $name = $data->user->name;
                return '<a href="' . route('admin-vendor-show', $data->user->id) . '" target="_blank">' . $name . '</a>';
            })
            ->addColumn('email', function (Withdraw $data) {
                $email = $data->user->email;
                return $email;
            })
            ->addColumn('phone', function (Withdraw $data) {
                $phone = $data->user->phone;
                return $phone;
            })
            ->editColumn('status', function (Withdraw $data) {
                $status = ucfirst($data->status);
                return $status;
            })
            ->editColumn('amount', function (Withdraw $data) {
                $sign = Currency::where('is_default', '=', 1)->first();
                $amount = $sign->sign . round($data->amount * $sign->value, 2);
                return $amount;
            })
            ->addColumn('action', function (Withdraw $data) {
                $action = '<div class="action-list"><a data-href="' . route('admin-vendor-withdraw-show', $data->id) . '" class="view details-width" data-toggle="modal" data-target="#modal1"> <i class="fas fa-eye"></i> Details</a>';
                if ($data->status == "pending") {
                    $action .= '<a data-href="' . route('admin-vendor-withdraw-accept', $data->id) . '" data-toggle="modal" data-target="#confirm-delete"> <i class="fas fa-check"></i> Accept</a><a data-href="' . route('admin-vendor-withdraw-reject', $data->id) . '" data-toggle="modal" data-target="#confirm-delete1"> <i class="fas fa-trash-alt"></i> Reject</a>';
                }
                $action .= '</div>';
                return $action;
            })
            ->rawColumns(['name', 'action'])
            ->toJson(); //--- Returning Json Data To Client Side
    }

    //*** GET Request
    public function withdraws()
    {
        return view('admin.vendor.withdraws');
    }

    //*** GET Request
    public function withdrawdetails($id)
    {
        $sign = Currency::where('is_default', '=', 1)->first();
        $withdraw = Withdraw::findOrFail($id);
        return view('admin.vendor.withdraw-details', compact('withdraw', 'sign'));
    }

    //*** GET Request
    public function accept($id)
    {
        $withdraw = Withdraw::findOrFail($id);
        $data['status'] = "completed";
        $withdraw->update($data);
        //--- Redirect Section
        $msg = 'Withdraw Accepted Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    //*** GET Request
    public function reject($id)
    {
        $withdraw = Withdraw::findOrFail($id);
        $account = User::findOrFail($withdraw->user->id);
        $account->affilate_income = $account->affilate_income + $withdraw->amount + $withdraw->fee;
        $account->update();
        $data['status'] = "rejected";
        $withdraw->update($data);
        //--- Redirect Section
        $msg = 'Withdraw Rejected Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends
    }

}