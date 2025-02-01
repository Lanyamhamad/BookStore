# 📚 Flutter Bookstore App

## **Overview**
The **Flutter Bookstore App** is a mobile application that allows users to browse books, add them to their cart, and purchase them. The app is built using **Flutter** and follows the **MVVM (Model-View-ViewModel) architecture** for maintainability and scalability. It also integrates **SQLite for persistent storage** and includes **user authentication** with login and signup functionalities.

---

## **Features**
✅ Browse books with details like author, price, and cover images.  
✅ Add books to a shopping cart and manage the cart.  
✅ View book categories and recommendations.  
✅ firebase database for storing books. 
✅ State management using **Provider**.  
✅ Beautiful UI with a responsive design.  
✅ Bottom navigation for easy access to pages. 
✅ Order history and purchase tracking. 
 

---

## **Tech Stack**
- **Framework:** Flutter (Dart)  
- **State Management:** Provider  
- **Database:** firebase (firebase package)  
- **UI Components:** Material Design, Google Nav Bar  

---

## **Project Structure**
📂 lib/
├── 📂 components/        # UI Components (BookTile, BottomNav, Drawer, etc.)
├── 📂 models/            # Data Models (Book, User, CartItem, etc.)
├── 📂 pages/             # Screens (Home, Shop, Cart, Orders, etc.)
├── 📂 viewmodels/        # MVVM ViewModels (BookViewModel, CartViewModel)
├── 📂 services/          # Database 
├── 📝 const.dart          # Backroundcolor 
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

## **Frebase Firestore Setup**

The app uses Firestore to store books, users, and orders. The Firestore collections include:

books (id, title, author, price, imagePath, etc.)

orders* (id, bookId, bookTitle, bookPrice, orderDate)*

users (id, username, password)




Future Improvements

🔹 Implement Firebase authentication for better security.
🔹 Add a search bar for books and categories.
🔹 Integrate an online payment system.
🔹 Improve UI with animations and better design.