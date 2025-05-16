<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
<div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
    <h2 class="text-2xl font-bold mb-6 text-center text-gray-800">Sign Up</h2>
    <form id="signupForm" onsubmit="return validateForm(event)" action="/signup" method="post">
        <div class="mb-4">
            <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
            <input type="text" id="username" name="username" required
                   class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500"
                   placeholder="Enter your username">
        </div>
        <div class="mb-4">
            <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
            <input type="password" id="password" name="password" required
                   class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500"
                   placeholder="Enter your password">
        </div>
        <div class="mb-6">
            <label for="confirmPassword" class="block text-sm font-medium text-gray-700">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required
                   class="mt-1 w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500"
                   placeholder="Confirm your password">
        </div>
        <div id="errorMessage" class="hidden mb-4 text-red-600 text-sm"></div>
        <button type="submit" class="signup-button w-full bg-indigo-600 text-white py-2 px-4 rounded-md hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500">
            Sign Up
        </button>
    </form>
</div>

<script>
    function validateForm(event) {
        event.preventDefault();
        const username = document.getElementById('username').value.trim();
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const errorMessage = document.getElementById('errorMessage');

        // Reset error message
        errorMessage.classList.add('hidden');
        errorMessage.textContent = '';

        // Validation checks
        if (username.length < 3) {
            errorMessage.textContent = 'Username must be at least 3 characters long.';
            errorMessage.classList.remove('hidden');
            return false;
        }

        if (password.length < 6) {
            errorMessage.textContent = 'Password must be at least 6 characters long.';
            errorMessage.classList.remove('hidden');
            return false;
        }

        if (password !== confirmPassword) {
            errorMessage.textContent = 'Passwords do not match.';
            errorMessage.classList.remove('hidden');
            return false;
        }

        // Prepare form data for submission
        const formData = {
            username: username,
            password: password
        };

        // Call the submit function
        submitSignupForm(formData);
        return false; // Prevent default form submission
    }

    // Function to handle the POST request
    function submitSignupForm(formData) {
        // Show loading state
        const signupButton = document.querySelector('.signup-button');
        const originalButtonText = signupButton.textContent;
        signupButton.textContent = 'Signing up...';
        signupButton.disabled = true;

        // API endpoint - replace with your actual API endpoint
        const apiUrl = 'http://localhost:8080/signup';

        fetch(apiUrl, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(formData)
        })
            .then(response => {
                if (!response.ok) {
                    return response.json().then(errorData => {
                        throw new Error(errorData.message || 'Registration failed');
                    });
                }
                return response.json();
            })
            .then(data => {
                console.log('Registration successful:', data);
                window.location.href = '/login';
            })
            .catch(error => {
                // Handle errors
                console.error('Registration error:', error);
                const errorMessage = document.getElementById('errorMessage');
                errorMessage.textContent = 'Registration failed: ' + error.message;
                errorMessage.classList.remove('hidden');
            })
            .finally(() => {
                // Reset button state
                signupButton.textContent = originalButtonText;
                signupButton.disabled = false;
            });
    }
</script>
</body>
</html>