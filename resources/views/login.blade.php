@extends('layouts.main')
@section('content')

<div class="row justify-content-center">
    <div class="col-12 col-md-6 col-lg-4">
        <main class="form-signin w-100 m-auto p-4" style="background-color: #f8f9fa; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1);">
            @if (session('pesan'))
                <div class="alert alert-success">
                    {{ session('pesan') }}
                </div>
            @endif

            <form method="POST" action="/login">
                @csrf

                <div class="text-center mb-4">
                    <h1 class="h3 mb-3 fw-normal" style="color: #6c757d;">Please Sign In</h1>
                </div>

                <!-- Email Input -->
                <div class="form-floating mb-3 position-relative">
                    <input type="email"
                           class="form-control @error('email') is-invalid @enderror"
                           name="email"
                           id="floatingInput"
                           placeholder="name@example.com"
                           value="{{ old('email') }}">
                    <label for="floatingInput">Email Address</label>
                    <i class="fas fa-envelope position-absolute top-50 end-0 translate-middle-y pe-3" style="color: #6c757d;"></i>
                    @error('email')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <!-- Password Input -->
                <div class="form-floating mb-3 position-relative">
                    <input type="password"
                           class="form-control @error('password') is-invalid @enderror"
                           id="floatingPassword"
                           name="password"
                           placeholder="Password">
                    <label for="floatingPassword">Password</label>
                    <i class="fas fa-lock position-absolute top-50 end-0 translate-middle-y pe-3" style="color: #6c757d;"></i>
                    @error('password')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>

                <!-- Remember Me Checkbox -->
                <div class="form-check text-start mb-4">
                    <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        Remember me
                    </label>
                </div>

                <!-- Submit Button -->
                <button class="btn btn-primary w-100 py-2" type="submit" style="background-color: #6c757d; border-color: #6c757d;">
                    <i class="fas fa-sign-in-alt"></i> Sign In
                </button>

                <!-- Register Link -->
                <div class="text-center mt-3">
                    <span>Don't have an account? </span>
                    <a href="/register" style="color: #6c757d; text-decoration: underline;">Register</a>
                </div>
            </form>
        </main>
    </div>
</div>

@endsection

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
