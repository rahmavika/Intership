<!-- Sidebar -->
<div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary" style="position: fixed; top: 80px; bottom: 0; left: 0; background-color: #EDF3F2;">
    <div class="offcanvas-md offcanvas-end vh-100" tabindex="-1" id="sidebarMenu" aria-labelledby="sidebarMenuLabel" style="background-color: #a3be4c;">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title text-white" id="sidebarMenuLabel">Company name</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ request()->is('dashboard') ? 'active' : '' }}" href="/dashboard">
                        <i class="bi bi-house-door-fill"></i>
                        Dashboard
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ request()->is('dashboard-kategori') ? 'active' : '' }}" href="/dashboard-kategori">
                        <i class="bi bi-tags-fill"></i>
                        Kategori Barang
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ request()->is('dashboard-lokasi') ? 'active' : '' }}" href="/dashboard-lokasi">
                        <i class="bi bi-geo-alt-fill"></i>
                        Lokasi
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ request()->is('dashboard-supplier') ? 'active' : '' }}" href="/dashboard-supplier">
                        <i class="bi bi-truck"></i>
                        Supplier
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ request()->is('dashboard-barang') ? 'active' : '' }}" href="/dashboard-barang">
                        <i class="bi bi-box-seam"></i>
                        Barang
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ request()->is('dashboard-masuk') ? 'active' : '' }}" href="/dashboard-masuk">
                        <i class="bi bi-arrow-down-circle-fill"></i>
                        Barang Masuk
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ request()->is('dashboard-keluar') ? 'active' : '' }}" href="/dashboard-keluar">
                        <i class="bi bi-arrow-up-circle-fill"></i>
                        Barang Keluar
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link d-flex align-items-center gap-2 {{ request()->is('dashboard-user') ? 'active' : '' }}" href="/dashboard-user">
                        <i class="bi bi-people-fill"></i>
                        Pengguna
                    </a>
                </li>
            </ul>

            <hr class="my-3 text-black">

            <ul class="nav flex-column mb-auto">
                <li class="nav-item">
                    <form id="logout-form" action="/logout" method="POST" style="display: inline;">
                        @csrf
                        <a class="nav-link d-flex align-items-center gap-2" href="/" onclick="document.getElementById('logout-form').submit(); this.classList.add('active');">
                            <i class="bi bi-box-arrow-right"></i>
                            Sign out
                        </a>
                    </form>
                </li>
            </ul>

        </div>
    </div>
</div>
