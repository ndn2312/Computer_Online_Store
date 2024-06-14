<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Product;
use App\Models\ProductImage;
use Illuminate\Support\Facades\Validator;
use App\Models\TempImage;
use Intervention\Image\Facades\Image;
// use Image;


class ProductController extends Controller
{
    
    public function index(Request $request){
        $products = Product::latest('id')->with('product_images');

        if($request->get('keyword') !="" ){
            $products = $products->where('title','like','%'.$request->keyword.'%');
        }
        
        $products = $products->paginate();
        // dd($products);
        $data['products'] = $products;
        return view('admin.products.list',$data);
    }
    
    public function create(){
        $data = [];
        $categories = Category::orderBy('name','ASC')->get();
        $brands = Brand::orderBy('name','ASC')->get();
        $data['categories'] = $categories;
        $data['brands'] = $brands;
        return view('admin.products.create',$data);
    }

    public function store(Request $request){
        // dd($request->image_array);
        // exit();
        $rules = [
            'title' => 'required',
            'slug' => 'required|unique:products',
            'price' => 'required|numeric',
            'sku' => 'required|unique:products',
            'track_qty' => 'required|in:Yes,No',
            'category' => 'required|numeric',
            'is_featured' => 'required|in:Yes,No',


        ];

        if(!empty($request->track_qty) && $request->track_qty == 'Yes' ){
            $rules['qty'] = 'required|numeric';
        }
        
        $validator =  Validator::make($request->all(),$rules);

        if($validator->passes()){

            $product = new Product;
            $product->title = $request->title;
            $product->slug = $request->slug;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->compare_price = $request->compare_price;

            $product->sku  = $request->sku;

            $product->barcode = $request->barcode;
            $product->track_qty = $request->track_qty;
            $product->qty = $request->qty;
            $product->status = $request->status;
            $product->category_id = $request->category;
            $product->sub_category_id = $request->sub_category;
            $product->brand_id = $request->brand;
            $product->is_featured = $request->is_featured;
            $product->save();

            // Lưu ảnh thư viện
            if(!empty($request->image_array)){
                foreach ($request->image_array as $temp_image_id) {

                    $tempImageInfo = TempImage::find($temp_image_id);
                    $extArray = expLode('.', $tempImageInfo->name);
                    $ext = last($extArray);

                    $productImage = new ProductImage();
                    $productImage->product_id = $product->id;
                    $productImage->image = 'NULL';
                    $productImage->save();

                    $imageName = $product->id.'-'.$productImage->id.'-'.time().'.'.$ext;
                    $productImage->image = $imageName;
                    $productImage->save();

                    //Tạo hình thu nhỏ của sản phẩm

                    // Ảnh lớn
                    $sourcePath = public_path().'/temp/'. $tempImageInfo->name;
                    $destPath = public_path().'/uploads/product/large/'.$imageName;

                    $image = Image::make($sourcePath);
                    $image->resize(1400, null, function ($constraint) {
                        $constraint->aspectRatio();
                    });
                    $image->save($destPath);

                    // Ảnh nhỏ
                    $destPath = public_path().'/uploads/product/small/'.$imageName;
                    $image = Image::make($sourcePath);
                    $image->fit(300, 300);
                    $image->save($destPath);
            }
        }

            session()->flash('success','Đã thêm sản phẩm thành công');
            return response()->json([
                'status' => true,
                'message' => 'Đã thêm sản phẩm thành công'
            ]);

        } else{
            return response()->json([
                // 'status' => true,
                // 'message' => 'Đã thêm sản phẩm thành công'
                'status'=> false,
                'errors'=> $validator->errors() 
                
            ]);
        }
    }
    
}