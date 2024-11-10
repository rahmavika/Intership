@extends('layouts.main')
@section('content')

<div class="row justify-content-center">
    <div class="col-md-6 col-lg-4">
        <main class="form-signin w-100 m-auto p-4" style="background-color: #f8f9fa; border-radius: 8px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1);">
            <form method="POST" action="/register">
                @csrf
                <h1 class="h3 mb-3 fw-normal text-center">Register</h1>

                <div class="form-floating mb-3 position-relative">
                    <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" id="floatingName" placeholder="Your Name" value="{{ old('name') }}">
                    <label for="floatingName"><i class="fas fa-user me-2"></i>Name</label>
                    @error('name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-floating mb-3 position-relative">
                    <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" id="floatingEmail" placeholder="name@example.com" value="{{ old('email') }}">
                    <label for="floatingEmail"><i class="fas fa-envelope me-2"></i>Email address</label>
                    @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-floating mb-3 position-relative">
                    <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword"><i class="fas fa-lock me-2"></i>Password</label>
                    @error('password')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="form-floating mb-3 position-relative">
                    <input type="password" class="form-control @error('password_confirmation') is-invalid @enderror" name="password_confirmation" id="password-confirm" placeholder="Confirm Password">
                    <label for="floatingPasswordConfirm"><i class="fas fa-lock me-2"></i>Confirm Password</label>
                    @error('password_confirmation')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <button class="btn btn-primary w-100 py-2" type="submit" style="background-color: #6c757d; border-color: #6c757d;">Register</button>
                <div class="text-center mt-3">Already have an account? <a href="/login">Sign in</a></div>
            </form>
        </main>
    </div>
</div>

@endsection
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
