<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Client - eShop</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
<!-- Header -->
<header class="bg-blue-600 text-white shadow-md">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex justify-between items-center">
        <div class="flex items-center">
            <img src="/static/logo.png" alt="Hotel Logo" class="h-10 w-10 mr-2"> <!-- Adjust logo path -->
            <h1 class="text-xl font-semibold">eShop Admin</h1>
        </div>
        <nav class="flex space-x-4">
            <a href="/home" class="hover:underline">Back to home</a>
            <a href="/logout" class="hover:underline">Logout</a>
        </nav>
    </div>
</header>

<!-- Main Content -->
<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="bg-white p-6 rounded-lg shadow-md">
        <h2 class="text-2xl font-bold mb-6 text-gray-800">Create New Client</h2>
        <form id="clientCreateForm" action="/client/create" method="post">
            <div class="grid grid-cols-1 gap-6 sm:grid-cols-2">
                <div>
                    <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
                    <input type="text" id="name" name="name" required
                           class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"
                           placeholder="Enter client name">
                </div>
                <div>
                    <label for="surname" class="block text-sm font-medium text-gray-700">Surname</label>
                    <input type="text" id="surname" name="surname" required
                           class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"
                           placeholder="Enter client surname">
                </div>
                <div class="sm:col-span-2">
                    <label for="passport" class="block text-sm font-medium text-gray-700">Passport Data</label>
                    <input type="text" id="passport" name="passport" required
                           class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"
                           placeholder="Enter passport number">
                </div>
            </div>
            <div id="errorMessage" class="hidden mt-4 text-red-600 text-sm"></div>
            <div class="mt-6 flex justify-end space-x-4">
                <a href="/dashboard" class="text-blue-600 hover:underline">Back to Dashboard</a>
                <button type="submit" class="bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">
                    Create Client
                </button>
            </div>
        </form>
    </div>
</main>
</body>
</html>