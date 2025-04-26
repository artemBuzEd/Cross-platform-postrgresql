@import com.artemBuzEd.eShop.data.Settlement
@import java.time.format.DateTimeFormatter
@import java.util.List

@param List<Settlement> settlements

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Settlements</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
<div class="container mx-auto p-6">
    <h1 class="text-3xl font-bold mb-6 text-center">Hotel Settlements</h1>
    <div class="bg-white shadow-md rounded-lg overflow-hidden">
        <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gray-50">
            <tr>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Settlement ID</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Client Name</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Room Number</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Comfort</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Check-in Date</th>
                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Check-out Date</th>
            </tr>
            </thead>
            <tbody class="bg-white divide-y divide-gray-200">
            @for(Settlement settl : settlements)
                <tr>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${settl.getSettlement_id()}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${settl.getClient().getName()} ${settl.getClient().getSurname()}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${settl.getRoom().getRoomNumber()}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${settl.getRoom().getComfort()}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${settl.getSettlementDate().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))}</td>
                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">${settl.getSettlementRelease().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))}</td>
                </tr>
            @endfor
            @if(settlements.isEmpty())
                <tr>
                    <td colspan="6" class="px-6 py-4 text-center text-sm text-gray-500">No settlements found.</td>
                </tr>
            @endif
            </tbody>
        </table>
    </div>
</div>
</body>
</html>