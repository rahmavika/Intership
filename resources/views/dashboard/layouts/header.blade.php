<header class="navbar navbar-expand-lg navbar-dark sticky-top bg-primary shadow" data-bs-theme="dark">
    <div class="container-fluid">
        <!-- Brand -->
        {{-- <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-5 text-white" href="#">INVENTARIS BARANG</a> --}}
        <a href="/dashboard" class="navbar-brand">
            <img src="{{ asset('images/asus1.png') }}" alt="Sayur Keren" class="img-fluid navbar-image" style="width: 150px; height: 50px;">
        </a>

        <!-- Informasi Akun Pengguna (Hanya untuk pengguna yang sudah login) -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                @auth
                    <li class="nav-item">
                        <span class="navbar-text text-white">
                            <i class="fas fa-user"></i> {{ Auth::user()->name }}
                        </span>
                    </li>
                @endauth

                @guest
                    <li class="nav-item">
                        <a class="nav-link text-white" href="{{ route('login') }}">
                            <i class="fas fa-sign-in-alt"></i> <!-- Icon for login -->
                        </a>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</header>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

