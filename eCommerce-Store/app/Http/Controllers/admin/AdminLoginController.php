<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Psy\Readline\Hoa\Console;

class AdminLoginController extends Controller
{
    public function index()
    {
        return view('admin.login');
    }

    protected function authenticate(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required'
        ]);
        Validator::make($request->all(), [
            'name' => 'required',
            'url' => 'required',
            'isPublic' => 'required'
        ]);

        if ($validator->passes()) {
            if (Auth::guard('admin')->attempt(
                ['email' => $request->email, 'password' => $request->password],
                $request->get('remember')
            )) {
                $admin = Auth::guard('admin')->user();

                if ($admin->role == 1) {
                    return redirect()->route('admin.dashboard');
                }else{
                    Auth::guard('admin')->logout();
                    return redirect()->route('admin.homepage')->with('error', 'Your are not authorized to access admin panel.');
                }
            } else {
                return redirect()->route('admin.login')->with('error', 'Your Email or Password is incorrect');
            }
        } else {
            return redirect()->route('admin.login')
                ->withErrors($validator)
                ->withInput($request->only('email'));
        }
    }
}
