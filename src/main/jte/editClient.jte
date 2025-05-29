@import com.artemBuzEd.eShop.data.Client

@param Client client

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Client - The Grand Horizon</title>
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
            <a href="/clients" class="hover:underline">Clients</a>
            <a href="/logout" class="hover:underline">Logout</a>
        </nav>
    </div>
</header>

<!-- Main Content -->
<main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <div class="bg-white p-6 rounded-lg shadow-md">
        <h2 class="text-2xl font-bold mb-6 text-gray-800">Edit Client</h2>
        <form id="editClientForm" action="/clients/edit" method="post">
            <div class="grid grid-cols-1 gap-6 sm:grid-cols-2">
                <div>
                    <label for="clientId" class="block text-sm font-medium text-gray-700">Client ID</label>
                    <input type="text" id="clientId" name="clientId" value="${client.getClient_id()}" readonly
                           class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm bg-gray-100 cursor-not-allowed">
                </div>
                <div>
                    <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
                    <input type="text" id="name" name="name" value="${client.getName()}" required
                           class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"
                           placeholder="Enter client name">
                </div>
                <div>
                    <label for="surname" class="block text-sm font-medium text-gray-700">Surname</label>
                    <input type="text" id="surname" name="surname" value="${client.getSurname()}" required
                           class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"
                           placeholder="Enter client surname">
                </div>
                <div class="sm:col-span-2">
                    <label for="passportData" class="block text-sm font-medium text-gray-700">Passport Data</label>
                    <input type="text" id="passportData" name="passportData" value="${client.getPassportData()}" required
                           class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"
                           placeholder="Enter passport number">
                </div>
                <div class="sm:col-span-2">
                    <label for="comment" class="block text-sm font-medium text-gray-700">Comment</label>
                    <textarea id="comment" name="comment" rows="4" class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-blue-500 focus:border-blue-500"
                              placeholder="Enter any comments">${client.getComment()}</textarea>
                </div>
            </div>
            <div class="mt-6 flex justify-end space-x-4">
                <a href="/clients/list" class="text-blue-600 hover:underline">Back to Clients</a>
                <button type="submit" class="bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">
                    Save Changes
                </button>
            </div>
        </form>
    </div>
</main>
</body>
</html>