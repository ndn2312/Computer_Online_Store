@extends('front.layouts.app')

@section('content')
<section class="section-5 pt-3 pb-3 mb-3 bg-white">
    <div class="container">
        <div class="light-font">
            <ol class="breadcrumb primary-color mb-0">
                <li class="breadcrumb-item"><a class="white-text" href="{{ route('front.home') }}">Trang chủ</a></li>
                <li class="breadcrumb-item"><a class="white-text" href="{{ route('front.shop') }}">Cửa hàng</a></li>
                <li class="breadcrumb-item">{{ $product->title }}</li>
            </ol>
        </div>
    </div>
</section>

<section class="section-7 pt-3 mb-3">
    <div class="container">
        <div class="row ">
            <div class="col-md-5">
                <div id="product-carousel" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner bg-light">
                        @if($product->product_images )
                            @foreach($product->product_images as $key => $productImage)
                            <div class="carousel-item {{ ($key == 0) ?'active':''}}" >
                                <img class="w-100 h-100" src="{{ asset('uploads/product/large/'.$productImage->image) }}" alt="Image">
                            </div>
                            @endforeach
                        @endif                      
                    </div>
                    <a class="carousel-control-prev" href="#product-carousel" data-bs-slide="prev">
                        <i class="fa fa-2x fa-angle-left text-dark"></i>
                    </a>
                    <a class="carousel-control-next" href="#product-carousel" data-bs-slide="next">
                        <i class="fa fa-2x fa-angle-right text-dark"></i>
                    </a>
                </div>
            </div>
            <div class="col-md-7">
                <div class="bg-light right">
                    <h1>{{ $product->title }}</h1>
                    <div class="d-flex mb-3">
                        <div class="text-primary mr-2">
                            <small class="fas fa-star"></small>
                            <small class="fas fa-star"></small>
                            <small class="fas fa-star"></small>
                            <small class="fas fa-star-half-alt"></small>
                            <small class="far fa-star"></small>
                        </div>
                        <small class="pt-1">(99 Reviews)</small>
                    </div>

                    @if($product->compare_price >0)
                    <h2 class="price text-secondary"><del>{{ $product->compare_price }}Đ</del></h2>

                    @endif
                    <h2 class="price ">{{ $product->price }}Đ</h2>
                        {!! $product->short_description!!}
                    <a href="javascript:void(0);" onclick="addToCart({{ $product->id }});" class="btn btn-dark"><i class="fas fa-shopping-cart"></i> &nbsp;Thêm vào giỏ hàng</a>
                </div>
            </div>

            <div class="col-md-12 mt-5">
                <div class="bg-light">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="description-tab" data-bs-toggle="tab" data-bs-target="#description" type="button" role="tab" aria-controls="description" aria-selected="true">Mô tả</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="shipping-tab" data-bs-toggle="tab" data-bs-target="#shipping" type="button" role="tab" aria-controls="shipping" aria-selected="false">Vận chuyển và hoàn trả</button>
                        </li>
                        {{-- <li class="nav-item" role="presentation">
                            <button class="nav-link" id="reviews-tab" data-bs-toggle="tab" data-bs-target="#reviews" type="button" role="tab" aria-controls="reviews" aria-selected="false">Reviews</button>
                        </li> --}}
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                           {!! $product->description !!}
                        </div>
                        <div class="tab-pane fade" id="shipping" role="tabpanel" aria-labelledby="shipping-tab">
                            {!! $product->shipping_returns!!}
                        </div>
                        <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                        
                        </div>
                    </div>
                </div>
            </div> 
        </div>           
    </div>
</section>

<section class="pt-5 section-8">
    <div class="container">
        <div class="section-title">
            <h2>Sản phẩm tương tự</h2>
        </div> 
        <div class="col-md-12">
            <div id="related-products" class="carousel">
                <div class="card product-card">
                    <div class="product-image position-relative">
                        <a href="" class="product-img"><img class="card-img-top" src="https://product.hstatic.net/200000722513/product/download.png_1eb1cdf82aea4fcf9344d6652dcb071d_grande.jpg" alt=""></a>
                        <a class="whishlist" href="222"><i class="far fa-heart"></i></a>                            

                        <div class="product-action">
                            <a class="btn btn-dark" href="javascript:void(0);" onclick="addToCart({{ $product->id }});">
                                <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                            </a>                            
                        </div>
                    </div>                        
                    <div class="card-body text-center mt-3">
                        <a class="h6 link" href="">Màn hình Asus TUF GAMING VG249Q3A 24" Fast IPS 180Hz Gsync chuyên game</a>
                        <div class="price mt-2">
                            <span class="h5"><strong>10.000.000Đ</strong></span>
                            <span class="h6 text-underline"><del>12.000.000Đ</del></span>
                        </div>
                    </div>                        
                </div> 
                <div class="card product-card">
                    <div class="product-image position-relative">
                        <a href="" class="product-img"><img class="card-img-top" src="https://product.hstatic.net/200000722513/product/download.png_1eb1cdf82aea4fcf9344d6652dcb071d_grande.jpg" alt=""></a>
                        <a class="whishlist" href="222"><i class="far fa-heart"></i></a>                            

                        <div class="product-action">
                            <a class="btn btn-dark" href="#">
                                <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                            </a>                            
                        </div>
                    </div>                        
                    <div class="card-body text-center mt-3">
                        <a class="h6 link" href="">Màn hình Asus TUF GAMING VG249Q3A 24" Fast IPS 180Hz Gsync chuyên game</a>
                        <div class="price mt-2">
                            <span class="h5"><strong>10.000.000Đ</strong></span>
                            <span class="h6 text-underline"><del>12.000.000Đ</del></span>
                        </div>
                    </div>                        
                </div> 
                <div class="card product-card">
                    <div class="product-image position-relative">
                        <a href="" class="product-img"><img class="card-img-top" src="https://product.hstatic.net/200000722513/product/download.png_1eb1cdf82aea4fcf9344d6652dcb071d_grande.jpg" alt=""></a>
                        <a class="whishlist" href="222"><i class="far fa-heart"></i></a>                            

                        <div class="product-action">
                            <a class="btn btn-dark" href="#">
                                <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                            </a>                            
                        </div>
                    </div>                        
                    <div class="card-body text-center mt-3">
                        <a class="h6 link" href="">Màn hình Asus TUF GAMING VG249Q3A 24" Fast IPS 180Hz Gsync chuyên game</a>
                        <div class="price mt-2">
                            <span class="h5"><strong>10.000.000Đ</strong></span>
                            <span class="h6 text-underline"><del>12.000.000Đ</del></span>
                        </div>
                    </div>                        
                </div> 
                <div class="card product-card">
                    <div class="product-image position-relative">
                        <a href="" class="product-img"><img class="card-img-top" src="https://product.hstatic.net/200000722513/product/download.png_1eb1cdf82aea4fcf9344d6652dcb071d_grande.jpg" alt=""></a>
                        <a class="whishlist" href="222"><i class="far fa-heart"></i></a>                            

                        <div class="product-action">
                            <a class="btn btn-dark" href="#">
                                <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                            </a>                            
                        </div>
                    </div>                        
                    <div class="card-body text-center mt-3">
                        <a class="h6 link" href="">Màn hình Asus TUF GAMING VG249Q3A 24" Fast IPS 180Hz Gsync chuyên game</a>
                        <div class="price mt-2">
                            <span class="h5"><strong>10.000.000Đ</strong></span>
                            <span class="h6 text-underline"><del>12.000.000Đ</del></span>
                        </div>
                    </div>                        
                </div> 
                <div class="card product-card">
                    <div class="product-image position-relative">
                        <a href="" class="product-img"><img class="card-img-top" src="https://product.hstatic.net/200000722513/product/download.png_1eb1cdf82aea4fcf9344d6652dcb071d_grande.jpg" alt=""></a>
                        <a class="whishlist" href="222"><i class="far fa-heart"></i></a>                            

                        <div class="product-action">
                            <a class="btn btn-dark" href="#">
                                <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                            </a>                            
                        </div>
                    </div>                        
                    <div class="card-body text-center mt-3">
                        <a class="h6 link" href="">Màn hình Asus TUF GAMING VG249Q3A 24" Fast IPS 180Hz Gsync chuyên game</a>
                        <div class="price mt-2">
                            <span class="h5"><strong>10.000.000Đ</strong></span>
                            <span class="h6 text-underline"><del>12.000.000Đ</del></span>
                        </div>
                    </div>                        
                </div> 
            </div>
        </div>
    </div>
</section>
@endsection
{{-- 
@section('customJs')

@endsection --}}