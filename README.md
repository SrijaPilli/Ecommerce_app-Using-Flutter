# ecommerce_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
main.dart
The entry point of the application. It initializes the application and sets up routes for navigation.

models/
Contains data models for the application.

product.dart: Defines the Product model which represents a product in the store.
<br>
user.dart: Defines the User model which represents a user in the application.
<br>
providers/
Contains the state management logic for the application.
<br>

product_provider.dart: Manages the state for product data including fetching product lists and handling infinite scrolling.
<br>
search_provider.dart: Manages the state for product search functionality.
<br>
auth_provider.dart: Manages the state for user authentication including login and registration.
<br>
cart_provider.dart: Manages the state for the shopping cart, including adding and removing items from the cart.
<br>
services/
Contains services for API interactions.
<br>

api_service.dart: Handles communication with the Fake Store API for fetching product data.
<br>
auth_service.dart: Manages user authentication logic such as login and registration.
<br>
screens/
Contains the UI screens of the application.
<br>

homepage.dart: Displays the homepage with infinite scrolling of products.
<br>
product_detail_page.dart: Shows the details of a selected product.
<br>
search_page.dart: Displays the search results for products.
<br>
login_page.dart: Provides the user interface for user login.
<br>
register_page.dart: Provides the user interface for user registration.
<br>
cart_page.dart: Displays the shopping cart with items added by the user.
<br>
widgets/
Contains reusable UI components.
<br>

product_item.dart: Represents a single product item in a list or grid.
<br>
search_bar.dart: Provides a search bar widget for product search.
<br>
cart_item.dart: Represents a single item in the shopping cart.
<br>
utils/
Contains utility classes and constants.
<br>

constants.dart: Defines application-wide constants such as API endpoints, styles, and other configurations.
<br>
Getting Started
To get started with this project, follow the steps below:

## Clone the repository:

sh
Copy code
git clone https://github.com/SrijaPilli/ecommerce-flutter-app.git
cd ecommerce-flutter-app
Install dependencies:

sh
Copy code
flutter pub get
Run the application:

sh
Copy code
flutter run
## Dependencies
The project uses the following dependencies:

provider: For state management.
<br>
http: For making HTTP requests.
<br>
flutter_secure_storage: For securely storing user credentials.
<br>
API
The application uses the Fake Store API to fetch product data. Ensure you have an active internet connection to interact with the API.

## Features
Homepage with Infinite Scrolling: Browse products with continuous scrolling.
<br>
Product Detail Page: View detailed information about a product.
<br>
Product Search Functionality: Search for products by name or category.
<br>
User Authentication: Register and log in to your account.
<br>
Product Sorting Functionality: Sort products by price, popularity, etc.
<br>
Cart Functionality: Add and remove products from the shopping cart.
