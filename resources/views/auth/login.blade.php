@extends('administrator.layouts.app')

@section('content')

    <div class="auth-layout-wrap" style="background-image: url({{ url('administrator/assets/images/photo-wide-4.jpg') }}">
        <div class="auth-content" style="min-width: 330px">
            <div class="card o-hidden">
                <div class="row">
                    <div class="col-md-12">
                        <div class="p-4">
                            <div class="auth-logo text-center mb-4">
                                <img src="{{ url('administrator/assets/images/logo.png') }}" alt="">
                            </div>
                            <h1 class="mb-3 text-18">Sign In</h1>
                            <form class="form-horizontal" method="POST" action="{{ route('login') }}">
                                
                                {{ csrf_field() }}

                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
                                    
                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif

                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input id="password" type="password" class="form-control" name="password" required>

                                    @if ($errors->has('password'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif

                                </div>
                                <button class="btn btn-rounded btn-primary btn-block mt-2">Sign In</button>

                            </form>

                            <div class="mt-3 text-center">
                                <a href="forgot.html" class="text-muted"><u>Forgot Password?</u></a>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-md-6 text-center " style="background-size: cover;background-image: url(./assets/images/photo-long-3.jpg)">
                        <div class="pr-3 auth-right">
                            <a class="btn btn-rounded btn-outline-primary btn-outline-email btn-block btn-icon-text" href="signup.html">
                                <i class="i-Mail-with-At-Sign"></i> Sign up with Email
                            </a>
                            <a class="btn btn-rounded btn-outline-google btn-block btn-icon-text">
                                <i class="i-Google-Plus"></i> Sign up with Google
                            </a>
                            <a class="btn btn-rounded btn-block btn-icon-text btn-outline-facebook">
                                <i class="i-Facebook-2"></i> Sign up with Facebook
                            </a>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>

@endsection
