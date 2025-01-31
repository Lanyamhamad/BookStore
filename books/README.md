# 📚 Flutter Bookstore App

## **Overview**
The **Flutter Bookstore App** is a mobile application that allows users to browse books, add them to their cart, and purchase them. The app is built using **Flutter** and follows the **MVVM (Model-View-ViewModel) architecture** for maintainability and scalability. It also integrates **SQLite for persistent storage** and includes **user authentication** with login and signup functionalities.

---

## **Features**
✅ Browse books with details like author, price, and cover images.  
✅ Add books to a shopping cart and manage the cart.  
✅ View book categories and recommendations.  
✅ SQLite database for storing books and user authentication.  
✅ State management using **Provider**.  
✅ Beautiful UI with a responsive design.  
✅ Bottom navigation for easy access to pages.  
✅ User authentication (Login & Signup) with SQLite.  

---

## **Tech Stack**
- **Framework:** Flutter (Dart)  
- **State Management:** Provider  
- **Database:** SQLite (sqflite package)  
- **UI Components:** Material Design, Google Nav Bar  

---

## **Project Structure**
📂 lib/
├── 📂 components/        # UI Components (BookTile, BottomNav, Drawer, etc.)
├── 📂 models/            # Data Models (Book, User, CartItem, etc.)
├── 📂 pages/             # Screens (Home, Shop, Cart, Orders, Login, Signup, etc.)
├── 📂 viewmodels/        # MVVM ViewModels (BookViewModel, CartViewModel)
├── 📂 services/          # Database & Authentication Services (SQLite DB, Auth Service)
├── 📝 main.dart          # Entry point of the application


---

## **Installation & Setup**
```sh
# Clone the repository
git clone https://github.com/your-repo/flutter-bookstore-app.git

# Navigate to the project directory
cd flutter-bookstore-app

# Install dependencies
flutter pub get

# Run the app
flutter run
```

SQLite Database Setup

The app uses SQLite for storing books and user authentication data. The database tables include:

books (id, title, author, price, imagePath, pages, level, viewIsSelected)

users (id, username, password)

Authentication System

Users can register and log in using SQLite-based authentication. The authentication system:

Stores user credentials securely in SQLite.

Checks user login credentials before granting access.

Screenshots

(Add images here for UI previews)
<img src="assets/BuberBreakfastUiUx.png" alt="drawing" width="1000"/>

Future Improvements

🔹 Implement Firebase authentication for better security.
🔹 Add a search bar for books and categories.🔹 Integrate an online payment system.🔹 Improve UI with animations and better design.