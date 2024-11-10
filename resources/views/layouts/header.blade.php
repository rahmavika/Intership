<header>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color: #0A74DA;">
        <div class="container-fluid">
            <!-- Brand Name -->
            <a class="navbar-brand" href="#">Inventaris Barang</a>

            <!-- Toggler for mobile view -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navbar Items -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <!-- You can add more navbar items here -->
                </ul>

                <ul class="navbar-nav ms-auto mb-2 mb-md-0">
                    <!-- Login Button -->
                    <li class="nav-item" style="margin-right: 10px;">
                        <form action="/login" method="get" class="d-inline">
                            @csrf
                            <button class="nav-link btn btn-outline-light custom-button" type="submit">Login</button>
                        </form>
                    </li>

                    <!-- Register Button -->
                    <li class="nav-item">
                        <form action="/register" method="get" class="d-inline">
                            @csrf
                            <button class="nav-link btn btn-outline-light custom-button" type="submit">Register</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<!-- Custom CSS for buttons -->
<style>
    .custom-button {
        border: 1px solid white;
        color: white;
        width: 120px; /* Slightly larger buttons */
        text-align: center;
        display: inline-block;
        margin: 0 10px; /* Added margin for spacing */
        padding: 8px 16px; /* Padding for better button size */
        border-radius: 4px; /* Rounded corners */
    }

    .custom-button:hover {
        background-color: white;
        color: #0A74DA; /* Change text color on hover */
        border-color: #0A74DA;
    }
</style>
