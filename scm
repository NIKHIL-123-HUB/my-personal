<!DOCTYPE html>
<html lang="en">
<head>
    <!-- body back ground -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amity College Election</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .gradient-bg {
            background: linear-gradient(135deg, #131dd8 0%, #180189 100%);
        }
        .card-shadow {
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        .pulse {
            animation: pulse 2s infinite;
        }
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }
        .slide-in {
            animation: slideIn 0.5s forwards;
        }
        @keyframes slideIn {
            from { transform: translateX(100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }
        .progress-bar {
            transition: width 1s ease-in-out;
        }
        .winner-badge {
            position: absolute;
            top: -10px;
            right: -10px;
            background-color: #f59e0b;
            color: white;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 14px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
        .page-content {
            display: none;
        }
        .page-content.active {
            display: block;
        }
    </style>
</head>
<body class="bg-gray-100 font-sans">
    <!-- Main Container -->
    <div id="app" class="min-h-screen">
        <!-- Navigation -->
        <nav class="gradient-bg text-white shadow-lg">
            <div class="container mx-auto px-4 py-3 flex justify-between items-center">
                <div class="flex items-center space-x-2">
                    <span class="text-xl font-bold">Amity University Elections </span>
                </div>
                <div id="nav-links" class="hidden md:flex space-x-6">
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="home">Home</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="register">Register</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="login">Login</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="nominees">Nominees</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="vote">Vote</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="results">Results</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="admin" id="admin-link" style="display: none;">Admin</a>
                </div>
                <button id="mobile-menu-button" class="md:hidden focus:outline-none">
                    <i class="fas fa-bars text-2xl"></i>
                </button>
            </div>
            <!-- Mobile Menu -->
            <div id="mobile-menu" class="hidden md:hidden gradient-bg px-4 pb-4">
                <div class="flex flex-col space-y-3">
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="home">Home</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="register">Register</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="login">Login</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="nominees">Nominees</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="vote">Vote</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="results">Results</a>
                    <a href="#" class="nav-link hover:text-blue-200 transition" data-page="admin" id="admin-link-mobile" style="display: none;">Admin</a>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <div class="container mx-auto px-4 py-8">
            <!-- Home Page -->
            <div id="home-page" class="page-content active">
                <div class="max-w-6xl mx-auto">
                    <div class="text-center mb-12">
                        <h1 class="text-4xl font-bold text-gray-800 mb-4">College Student Council Elections</h1>`
