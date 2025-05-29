@import com.artemBuzEd.eShop.data.Client
@import java.util.List

@param List<Client> clients

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Clients</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
<div class="container mx-auto p-6">
    <h1 class="text-3xl font-bold mb-6 text-center">Hotel Clients</h1>
    <div class="bg-white shadow-md rounded-lg overflow-hidden">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gray-50">
            <tr>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Client ID</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Name</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Surname</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Passport Data</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Comment</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th>
            </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
            @for(Client client : clients)
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${client.getClient_id()}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${client.getName()}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${client.getSurname()}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${client.getPassportData()}</td>
                    <td class="px-6 py-4 text-sm text-gray-900">${client.getComment()}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm">
                        <a href="/clients/edit?id=${client.getClient_id()}" class="inline-block bg-blue-600 text-white px-3 py-1 rounded-md hover:bg-blue-700 mr-2">Edit</a>
                        <form action="/clients/delete" method="post" class="inline" onsubmit="return confirm('Are you sure you want to delete this client?');">
                            <input type="hidden" name="clientId" value="${client.getClient_id()}">
                            <button type="submit" class="bg-red-600 text-white px-3 py-1 rounded-md hover:bg-red-700">Delete</button>
                        </form>
                    </td>
                </tr>
            @endfor
            @if(clients.isEmpty())
                <tr>
                    <td colspan="6" class="px-6 py-4 text-center text-sm text-gray-500">No clients found.</td>
                </tr>
            @endif
            </tbody>
        </table>
    </div>
</div>
</body>
</html>