<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    

    
    public function login()
    {
        return view('admin.login');
    }
    
    public function loginPost(Request $request)
    {
        echo "loginpost";
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required'
        ]);
        Validator::make($request->all(), [
            'name' => 'required',
            'url' => 'required',
            'isPublic' => 'required'
        ]);
        echo $validator->passes();

        if ($validator->passes()) {
            if (Auth::guard('')->attempt(
                ['email' => $request->email, 'password' => $request->password],
                $request->get('remember')
            )) {
                $user = Auth::guard('')->user();

                if ($user->role == 2) {
                    return redirect()->route('user.home');
                }else{
                    Auth::guard('')->logout();
                    return redirect()->route('user.home')->with('error', 'Your are not authorized to access user panel.');
                }
            } else {
                return redirect()->route('user.login')->with('error', 'Your Email or Password is incorrect');
            }
        } else {
            return redirect()->route('user.login')
                ->withErrors($validator)
                ->withInput($request->only('email'));
        }
    }

    public function logout()
    {
        Auth::logout();

        return redirect()->route('user.login');
    }
}
