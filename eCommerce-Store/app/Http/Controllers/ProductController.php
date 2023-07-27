<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Session\Session;
use App\Models\User;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $products = Product::latest();
        if(!empty($request->get('keyword'))){
            $products = $products->where('name' , 'like','%'.$request->get('keyword').'%');
        }
        $products = $products->paginate(10);
        //$data['products'] = $products;
        $guestRole  = Auth::user()->role;

        if($guestRole == 2){

            return view('user.product.list', compact('products'));

        }else{
            $message = 'NULL';
    
            Auth::guard('admin')->user();
            return view('admin.product.list', compact('products' , 'message'));
        }
    }
    public function create(){
        $message = 'NULL';

        return view('admin.product.create', compact('message'));

    }
    public function store(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:products',
        ]);

        if ($validator->passes()) {
            $product = new Product();
            $product->name = $request->name;
            $product->slug = $request->slug;
            $product->status = $request->status;
            
            $product->image = $request->image;
            $product->description = $request->description;
            $product->category = $request->category;
            $product->quantity = $request->quantity;
            $product->price = $request->price;

            $product->save();
            
            $message = 'Record Added Successfully';
            return view('admin.product.create', compact('message'));                                  
        }else {
            $message = 'NULL';
            return view('admin.product.create', compact('message'));
        }
    }
    
    public function delete($productId , Request $request){
        
        $product = Product::find($productId);
        if(empty($product)){
            return redirect()->route('products.index');
        }
        $product->delete();
        redirect()->route('products.index');
    }


    public function edit($productId , Request $request){
        $product = Product::find($productId);
        if(empty($product)){
            return redirect()->route('products.index');
        }
        
        return view('admin.product.edit',compact('product'));
         
    }
    public function update($productId , Request $request){
        $product = Product::find($productId);

        if(empty($product)){
            return response()->json([
                'status' => false,
                'notFound' => true,
                'message' => 'Product Not found'
            ]);
        }

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'slug' => 'required|unique:products,slug,'.$product->id.',id',
        ]);

        if ($validator->passes()) {
            $product->name = $request->name;
            $product->slug = $request->slug;
            $product->status = $request->status;
            
            $product->image = $request->image;
            $product->description = $request->description;
            $product->category = $request->category;
            $product->quantity = $request->quantity;
            $product->price = $request->price;

            $product->save();

            $request->session()->flush('success' , 'Product Updated Successfully');
            return response()->json([ 'status'=> true, 'message' => 'Product Updated Successfully' ]);       
            }else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function buy($productId , Request $request){
        return view('user.product.list');

    }
}
