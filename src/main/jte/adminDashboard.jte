@import java.util.List

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - The Grand Horizon</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
<!-- Header -->
<header class="bg-blue-600 text-white shadow-md">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex justify-between items-center">
        <div class="flex items-center">
            <img src="/static/logo.png" alt="eShop Logo" class="h-10 w-10 mr-2">
            <h1 class="text-xl font-semibold">The Grand Horizon Admin</h1>
        </div>
        <nav class="flex space-x-4">
            <a href="/admin/dashboard" class="hover:underline">Dashboard</a>
            <a href="/logout" class="hover:underline">Logout</a>
        </nav>
    </div>
</header>

<!-- Main Content -->
<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="bg-white p-6 rounded-lg shadow-md">
        <h2 class="text-2xl font-bold mb-6 text-gray-800">Admin Dashboard</h2>
        <p class="text-gray-700 mb-6">Manage hotel operations efficiently.</p>
        <div class="flex flex-col sm:flex-row gap-4">
            <a href="/settlements" class="bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 text-center">
                View Settlements
            </a>
            <a href="/clients/list" class="bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 text-center">
                View Clients
            </a>
        </div>
    </div>
</main>

</body>
</html>