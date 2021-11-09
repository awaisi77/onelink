<?php

namespace App\Http\Middleware;

use App\Models\Verification;
use App\VendorDetail;
use Closure;
use Illuminate\Support\Facades\Auth;
use net\authorize\util\Log;

class VendorVerification
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        \Log::emergency("File:");

        if (Auth::guard('web')->check()) {
            $user = Auth::guard('web')->user();
            $verification = Verification::where('user_id', $user->id)
                ->where('admin_warning', '=', 0)
                ->where('status', '=', 'Verified')
                ->orderby('updated_at', 'asc')
                ->first();

            $businessDetail = VendorDetail::where('user_id', $user->id)
                ->first();

            if (!empty($verification) && !empty($businessDetail)) {
                return $next($request);
                // return redirect()->route('vendor-dashboard');
            } else {
                return redirect()->back()->with('unsuccess', "Complete your profile details and get verified from admin first.");
            }

        }
        return $next($request);
    }
}
