<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {

      switch ($guard) {
        case 'admin':
          if (Auth::guard($guard)->check()) {
            return redirect()->route('admin.dashboard');
          }
          break;

        default:
          if (Auth::guard($guard)->check()) {
              if(Auth::guard('web')->user()->is_vendor == 2)
              {
                  return redirect()->route('vendor-dashboard');
              }
              else {
                  return redirect()->route('user-package');
              }

          }
          break;
      }

        return $next($request);
    }
}
