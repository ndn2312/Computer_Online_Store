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
                $message = '<strong> '.$product->title.' </strong> thêm vào giỏ hàng thành công'; 
                session()->flash('success', $message);


            } else {
                $status = false;
                $message = $product->title. ' đã có trong giỏ hàng';
            }

            
        } else {
            
            Cart::add($product->id,$product->title , 1, $product->price, ['productImage' =>(!empty( $product->product_images))? $product->product_images->first():'']);
            $status = true;
            $message = '<strong> '.$product->title.' </strong> thêm vào giỏ hàng thành công'; 

            session()->flash('success', $message);

        }

        return response()->json([
            'status' => $status,
            'message' => $message
        ]);
    }
    public function  cart() {
        $cartContent = Cart::content();
        //dd($cartContent);
        $data['cartContent'] = $cartContent;
        
        return view('front.cart', $data);
    }

    public function updateCart(Request $request){
        $rowId = $request->rowId;
        $qty = $request->qty;

        $itemInfo = Cart::get($rowId);

        $product = Product::find($itemInfo->id);
        
        //Kiểm tra số lượng hàng
        
        if($product->track_qty == 'Yes'){
            if($qty <= $product->qty ){
                Cart::update($rowId, $qty);
                $message = 'Thông tin giỏ hàng được cập nhật';
                $status =true;
                session()->flash('success', $message);



            } else {
                $message = 'Số lượng ('.$qty.') vượt quá số lượng trong kho';
                $status =false;
                session()->flash('error', $message);

            }
        } else {
            Cart::update($rowId, $qty);
            $message = 'Thông tin giỏ hàng được cập nhật';
            $status =true;
            session()->flash('success', $message);


        }
        


        return response()->json([
            'status' => $status,
            'message' =>  $message
        ]);
    }

    public function deleteItem(Request $request){
        $rowId = $request->rowId;

        $itemInfo = Cart::get($rowId);
        if($itemInfo == null){
            $errorMessage = 'Không tìm thấy sản phẩm';
            session()->flash('error', $errorMessage);

            return response()->json([
                'status' => false,
                'message' =>  $errorMessage
            ]);
        }


        Cart::remove($request->rowId);

            $message = 'Đã xoá sản phẩm';

            session()->flash('success', $message);

            return response()->json([
                'status' => true,
                'message' =>  $message
            ]);
        
    }
    
}