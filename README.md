# 📱 User Management App

A simple Flutter application for managing users with Firebase Firestore. This app allows users to add new users with a name and age and view the list of users.

## ✨ Features
- 📝 **Add Users**: Users can input a name and age and store them in Firebase Firestore.
- 👀 **View Users**: Retrieves and displays all users stored in Firestore.
- 🔄 **Navigation**: A simple navigation system for switching between pages.

## 📌 Screens
1. 🏠 **Start Page**: Provides navigation buttons to add users or view users.
2. ➕ **Add User Page**: A form to enter a user's name and age, with validation.
3. 📋 **Get Users Page**: Displays all stored users in a grid view.

## 🛠 Tech Stack
- 🚀 **Flutter** (Dart)
- ☁️ **Firebase Firestore** (Cloud database)

## 📂 Project Structure
```
├── lib
│   ├── main.dart          # 🚀 Entry point of the application
│   ├── start_page.dart    # 🏠 Main navigation screen
│   ├── add_user.dart      # ➕ Page for adding a new user
│   ├── get_users.dart     # 📋 Page for retrieving and displaying users
```

## 📦 Dependencies
Ensure these dependencies are included in `pubspec.yaml`:
```yaml
  dependencies:
    flutter:
      sdk: flutter
    firebase_core: latest
    cloud_firestore: latest
```

## 📸 Screenshots
![image](https://github.com/user-attachments/assets/77f68283-45e3-48c6-adf9-9ea64e86d92d)
![image](https://github.com/user-attachments/assets/ec9c2248-25b6-43d4-a96c-9fd89ce19b78)
![image](https://github.com/user-attachments/assets/4480d34b-f615-47b6-8ec1-eb7caf5b46ba)
![image](https://github.com/user-attachments/assets/b42a41cb-e074-4366-8cf2-8c3bb52f963a)

## 👩‍💻 Author
[Saja Asfour](https://github.com/SajaAsfour)

