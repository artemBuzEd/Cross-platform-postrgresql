<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Grand Horizon Hotel - Your Perfect Stay</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Custom Styles (minimal, mostly for things Tailwind doesn't directly handle like specific background images) -->
    <style>
        .hero-bg {
            background-image: url('https://via.placeholder.com/1920x1080?text=Stunning+Hotel+Exterior'); /* Replace with your actual hero image */
        }
        .gallery-img {
            height: 300px; /* Fixed height for gallery images */
            object-fit: cover; /* Ensures images cover the area without distortion */
        }
        /* You can add more custom CSS here if needed, but try to use Tailwind classes primarily */
    </style>
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">

<!-- Navigation Bar -->
<nav class="bg-white shadow-lg fixed w-full z-10 top-0">
    <div class="container mx-auto flex flex-wrap items-center justify-between p-4">
        <a href="#" class="text-2xl font-bold text-blue-600 hover:text-blue-800">
            The Grand Horizon
        </a>
        <div class="block lg:hidden">
            <button id="nav-toggle" class="flex items-center px-3 py-2 border rounded text-gray-500 border-gray-600 hover:text-blue-600 hover:border-blue-600">
                <svg class="fill-current h-3 w-3" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><title>Menu</title><path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"/></svg>
            </button>
        </div>
        <div class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden lg:block pt-6 lg:pt-0" id="nav-content">
            <ul class="list-reset lg:flex justify-end flex-1 items-center">
                <li class="mr-3">
                    <a class="inline-block py-2 px-4 text-gray-700 hover:text-blue-600 no-underline" href="#">Home</a>
                </li>
                <li class="mr-3">
                    <a class="inline-block py-2 px-4 text-gray-700 hover:text-blue-600 no-underline" href="#rooms">Rooms</a>
                </li>
                <li class="mr-3">
                    <a class="inline-block py-2 px-4 text-gray-700 hover:text-blue-600 no-underline" href="#gallery">Gallery</a>
                </li>
                <li class="mr-3">
                    <a class="inline-block py-2 px-4 text-gray-700 hover:text-blue-600 no-underline" href="#testimonials">Testimonials</a>
                </li>
                <li>
                    <a class="inline-block py-2 px-4 bg-blue-500 hover:bg-blue-700 text-white font-bold rounded-lg" href="/creatingClient">Book Now</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<header class="hero-bg bg-cover bg-center pt-24" style="height: 70vh;">
    <div class="container mx-auto h-full flex flex-col justify-center items-center text-center">
        <div class="bg-black bg-opacity-50 p-8 rounded-lg">
            <h1 class="text-5xl font-bold text-white mb-4">Welcome to The Grand Horizon</h1>
            <p class="text-xl text-gray-200 mb-8">Experience luxury and comfort like never before.</p>
            <a href="#" class="bg-yellow-500 hover:bg-yellow-600 text-gray-900 font-bold py-3 px-6 rounded-lg text-lg transition duration-300">
                Explore Our Rooms
            </a>
        </div>
    </div>
</header>

<!-- Main Content -->
<main class="container mx-auto px-4 py-16">

    <!-- About Us Section -->
    <section id="about" class="text-center mb-16">
        <h2 class="text-3xl font-bold text-gray-800 mb-6">Discover Your Oasis</h2>
        <p class="text-lg text-gray-700 max-w-3xl mx-auto">
            Nestled in the heart of the city, The Grand Horizon Hotel offers breathtaking views, unparalleled service,
            and world-class amenities. Whether you're here for business or leisure, we promise an unforgettable stay.
        </p>
    </section>

    <!-- Rooms Preview (Simplified) -->
    <section id="rooms" class="mb-16">
        <h2 class="text-3xl font-bold text-gray-800 mb-8 text-center">Our Accommodations</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <!-- Room 1 -->
            <div class="bg-white rounded-lg shadow-xl overflow-hidden transform hover:scale-105 transition-transform duration-300">
                <img src="images/deluxe-room.jpg" alt="Deluxe Room" class="w-full h-64 object-cover">
                <div class="p-6">
                    <h3 class="font-bold text-xl mb-2 text-gray-800">Deluxe Room</h3>
                    <p class="text-gray-700 text-base mb-4">Spacious and elegantly furnished, perfect for a relaxing stay.</p>
                    <a href="#" class="text-blue-600 hover:text-blue-800 font-semibold">Learn More →</a>
                </div>
            </div>
            <!-- Room 2 -->
            <div class="bg-white rounded-lg shadow-xl overflow-hidden transform hover:scale-105 transition-transform duration-300">
                <img src="images/executive-room.webp" alt="Executive Suite" class="w-full h-64 object-cover">
                <div class="p-6">
                    <h3 class="font-bold text-xl mb-2 text-gray-800">Executive Suite</h3>
                    <p class="text-gray-700 text-base mb-4">Experience ultimate luxury with a separate living area and premium amenities.</p>
                    <a href="#" class="text-blue-600 hover:text-blue-800 font-semibold">Learn More →</a>
                </div>
            </div>
            <!-- Room 3 -->
            <div class="bg-white rounded-lg shadow-xl overflow-hidden transform hover:scale-105 transition-transform duration-300">
                <img src="images/family-room.jpg" alt="Family Room" class="w-full h-64 object-cover">
                <div class="p-6">
                    <h3 class="font-bold text-xl mb-2 text-gray-800">Family Room</h3>
                    <p class="text-gray-700 text-base mb-4">Comfortable and spacious, ideal for families traveling together.</p>
                    <a href="#" class="text-blue-600 hover:text-blue-800 font-semibold">Learn More →</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Photo Gallery Section -->
    <section id="gallery" class="mb-16">
        <h2 class="text-3xl font-bold text-gray-800 mb-8 text-center">Glimpses of The Grand Horizon</h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
            <div class="overflow-hidden rounded-lg shadow-lg">
                <img src="images/hotel_lobby.jpg" alt="Hotel Lobby" class="gallery-img w-full transform hover:scale-110 transition-transform duration-300">
            </div>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <img src="images/hotel_restaurant.jpg" alt="Hotel Restaurant" class="gallery-img w-full transform hover:scale-110 transition-transform duration-300">
            </div>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <img src="images/hotel_swimming_pool.jpg" alt="Swimming Pool" class="gallery-img w-full transform hover:scale-110 transition-transform duration-300">
            </div>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <img src="images/hotel_gym.jpg" alt="Gym Area" class="gallery-img w-full transform hover:scale-110 transition-transform duration-300">
            </div>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <img src="images/hotel_guest_view.jpg" alt="Guest Room View" class="gallery-img w-full transform hover:scale-110 transition-transform duration-300">
            </div>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <img src="images/hotel_conference_hall.jpg" alt="Conference Hall" class="gallery-img w-full transform hover:scale-110 transition-transform duration-300">
            </div>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <img src="images/hotel_spa_retreat.jpg" alt="Spa Retreat" class="gallery-img w-full transform hover:scale-110 transition-transform duration-300">
            </div>
            <div class="overflow-hidden rounded-lg shadow-lg">
                <img src="images/hotel_toproof_bar.jpg" alt="Rooftop Bar" class="gallery-img w-full transform hover:scale-110 transition-transform duration-300">
            </div>
        </div>
    </section>

    <!-- Client Comments/Testimonials Section -->
    <section id="testimonials" class="bg-white py-16 px-4 rounded-lg shadow-xl">
        <h2 class="text-3xl font-bold text-gray-800 mb-12 text-center">What Our Guests Say</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <!-- Testimonial 1 -->
            <div class="bg-gray-50 p-6 rounded-lg shadow-md border border-gray-200">
                <div class="flex items-center mb-4">
                    <img src="/images/hotel_gym.jpg" alt="Jane Smith" class="w-12 h-12 rounded-full mr-4">
                    <div>
                        <p class="font-semibold text-gray-900">Jane S.</p>
                        <p class="text-sm text-yellow-500">★★★★★</p>
                    </div>
                </div>
                <p class="text-gray-700 italic">"Absolutely wonderful stay! The staff were incredibly attentive, and the room was spotless with a fantastic view. Highly recommend!"</p>
            </div>
            <!-- Testimonial 2 -->
            <div class="bg-gray-50 p-6 rounded-lg shadow-md border border-gray-200">
                <div class="flex items-center mb-4">
                    <img src="/images/hotel_gym.jpg" alt="Mark Doe" class="w-12 h-12 rounded-full mr-4">
                    <div>
                        <p class="font-semibold text-gray-900">Mark D.</p>
                        <p class="text-sm text-yellow-500">★★★★☆</p>
                    </div>
                </div>
                <p class="text-gray-700 italic">"Great location and beautiful hotel. The breakfast buffet was amazing. Only downside was the pool being a bit crowded."</p>
            </div>
            <!-- Testimonial 3 -->
            <div class="bg-gray-50 p-6 rounded-lg shadow-md border border-gray-200">
                <div class="flex items-center mb-4">
                    <img src="/images/hotel_gym.jpg" alt="Alice L." class="w-12 h-12 rounded-full mr-4">
                    <div>
                        <p class="font-semibold text-gray-900">Alice L.</p>
                        <p class="text-sm text-yellow-500">★★★★★</p>
                    </div>
                </div>
                <p class="text-gray-700 italic">"A truly luxurious experience from check-in to check-out. The concierge was very helpful in planning our city tour. Will definitely be back!"</p>
            </div>
            <!-- Testimonial 4 -->
            <div class="bg-gray-50 p-6 rounded-lg shadow-md border border-gray-200">
                <div class="flex items-center mb-4">
                    <img src="/images/hotel_gym.jpg" alt="Robert W." class="w-12 h-12 rounded-full mr-4">
                    <div>
                        <p class="font-semibold text-gray-900">Robert W.</p>
                        <p class="text-sm text-yellow-500">★★★★★</p>
                    </div>
                </div>
                <p class="text-gray-700 italic">"The attention to detail is impeccable. Rooms are modern and comfortable. The rooftop bar offers stunning city views. Perfect for a business trip."</p>
            </div>
            <!-- Testimonial 5 -->
            <div class="bg-gray-50 p-6 rounded-lg shadow-md border border-gray-200">
                <div class="flex items-center mb-4">
                    <img src="/images/hotel_gym.jpg" alt="Sarah K." class="w-12 h-12 rounded-full mr-4">
                    <div>
                        <p class="font-semibold text-gray-900">Sarah K.</p>
                        <p class="text-sm text-yellow-500">★★★★☆</p>
                    </div>
                </div>
                <p class="text-gray-700 italic">"We had a lovely family vacation here. The kids enjoyed the pool, and the family room was spacious. Food at the restaurant was top-notch."</p>
            </div>
            <!-- Testimonial 6 -->
            <div class="bg-gray-50 p-6 rounded-lg shadow-md border border-gray-200">
                <div class="flex items-center mb-4">
                    <img src="/images/hotel_gym.jpg" alt="Tom P." class="w-12 h-12 rounded-full mr-4">
                    <div>
                        <p class="font-semibold text-gray-900">Tom P.</p>
                        <p class="text-sm text-yellow-500">★★★★★</p>
                    </div>
                </div>
                <p class="text-gray-700 italic">"Exceeded all expectations. The spa services were a highlight of my stay. Pure relaxation and bliss. I felt completely rejuvenated."</p>
            </div>
        </div>
    </section>

</main>

<!-- Footer -->
<footer class="bg-gray-800 text-gray-300 p-8">
    <div class="container mx-auto text-center">
        <p class="mb-2">© 2023 The Grand Horizon Hotel. All rights reserved.</p>
        <p class="text-sm">
            123 Luxury Lane, Dream City, DC 45678 | Phone: (123) 456-7890 | Email: info@grandhorizon.com
        </p>
        <div class="mt-4">
            <a href="#" class="text-gray-400 hover:text-white mx-2">Facebook</a>
            <a href="#" class="text-gray-400 hover:text-white mx-2">Instagram</a>
            <a href="#" class="text-gray-400 hover:text-white mx-2">Twitter</a>
        </div>
    </div>
</footer>

<!-- Simple Nav Toggle Script -->
<script>
    document.getElementById('nav-toggle').onclick = function(){
        document.getElementById("nav-content").classList.toggle("hidden");
    }
</script>

</body>
</html>