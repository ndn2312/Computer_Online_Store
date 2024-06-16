@extends('front.layouts.app')

@section('content')
<section class="section-5 pt-3 pb-3 mb-3 bg-white">
    <div class="container">
        <div class="light-font">
            <ol class="breadcrumb primary-color mb-0">
                <li class="breadcrumb-item"><a class="white-text" href="{{ route('front.home') }}">Trang chủ</a></li>
                <li class="breadcrumb-item">Đăng nhập</li>
            </ol>
        </div>
    </div>
</section>

<section class=" section-10">
    @if(Session::has('success'))
        <div class="alert alert-success">
            {{ Session::get('success') }}
        </div>
    @endif
    @if(Session::has('error'))
        <div class="alert alert-danger">
            {{ Session::get('error') }}
        </div>
    @endif
    <div class="container">
        <div class="login-form">    
            <form action="{{ route('account.authenticate') }}" method="post">
                @csrf
                <h4 class="modal-title">Đăng nhập</h4>
                <div class="form-group">
                    <input type="text" class="form-control @error('email') is-invalid @enderror" placeholder="Email" name="email" value="{{ old('email') }}" >
                    @error('email')
                        <p class="invalid-feedback" >{{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group">
                    <input type="password" class="form-control  @error('password') is-invalid @enderror" placeholder="Password" name="password">
                    @error('password')
                        <p class="invalid-feedback" >{{ $message }}</p>
                    @enderror
                </div>
                <div class="form-group small">
                    <a href="#" class="forgot-link">Đặt lại mật khẩu?</a>
                </div> 
                <input type="submit" class="btn btn-dark btn-block btn-lg" value="Đặp nhập">              
            </form>			
            <div class="text-center small">Bạn chưa có tài khoản? <a href="{{ route('account.register') }}">Đăng ký ngay</a></div>
        </div>
    </div>
</section>
@endsection