<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Card;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Session\Session;
use App\Models\User;

class CardController extends Controller
{
    public function index(Request $request)
    {
        $cards = Card::latest();
        if(!empty($request->get('keyword'))){
            $cards = $cards->where('name' , 'like','%'.$request->get('keyword').'%');
        }
        $cards = $cards->paginate(10);
        //$data['products'] = $products;
        $guestRole  = Auth::user()->role;
        
        if($guestRole == 1){
            return view('admin.product.cardsList', compact('cards'));
        }else{
            return view('user.product.login');

        }
    }
    public function userindex(Request $request)
    {
        $cards = Card::latest();
        if(!empty($request->get('keyword'))){
            $cards = $cards->where('name' , 'like','%'.$request->get('keyword').'%');
        }
        $cards = $cards->paginate(10);
        //$data['products'] = $products;
        $guestRole  = Auth::user()->role;
        
        if($guestRole == 1){
            return view('admin.product.login');
        }else{
            return view('user.product.cardsList', compact('cards'));

        }
    }
    public function add(Request $request)
    {
        $card = new Card();

        $card->user_name = $request->user_name;
        $card->user_email = $request->user_email;
        $card->user_id = $request->user_id;
        $card->product_id = $request->product_id;

        $card->save();

        //return back()->with('success', 'Register successfully');
        return  redirect()->route('usercards.index')->with('success', 'Successfully Process');
    }
}
