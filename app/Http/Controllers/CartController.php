<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

use Gloudemans\Shoppingcart\Facades\Cart;

class CartController extends Controller
{
    public function  addToCart(Request $request) {
        $product = Product::with('product_images')->find($request->id);

        if($product == null){
            return response()->json([
                'status' =>false,
                'message' => 'Không tìm thấy'
            ]);
        }

        if(Cart::count() >0){
            // echo "Sản phẩm đã có trong giỏ hàng";

            $cartContent = Cart::content();
            $productAlreadyExist = false;

            foreach($cartContent as $item){
                if($item->id == $product->id){
                    $productAlreadyExist = true;
                }
            }

            if($productAlreadyExist == false){
                Cart::add($product->id,$product->title , 1, $product->price, ['productImage' =>(!empty( $product->product_images))? $product->product_images->first():'']);

                $status = true;
                $message = $product->title. ' thêm vào giỏ hàng';

            } else {
                $status = false;
                $message = $product->title. ' đã có trong giỏ hàng';
            }

            
        } else {
            echo "giỏ hàng trống, hiện đang thêm sản phẩm vào giỏ hàng";
            // Giỏ hàng trống
            
            Cart::add($product->id,$product->title , 1, $product->price, ['productImage' =>(!empty( $product->product_images))? $product->product_images->first():'']);
            $status = true;
            $message = $product->title. ' thêm vào giỏ hàng'; 

        }

        return response()->json([
            'status' => $status,
            'message' => $message
        ]);
    }
    public function  cart() {
        $cartContent = Cart::content();
        // dd($cartContent);
        $data['cartContent'] = $cartContent;
        
        return view('front.cart', $data);
    }
}