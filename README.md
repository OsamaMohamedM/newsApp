# newApp

## 📌 Description
newApp is a Flutter-based mobile application that provides the latest news across various fields. It utilizes APIs to fetch real-time news and follows the MVVM architecture for a clean and maintainable code structure.

## 🚀 Features
- 📰 Fetches news from different categories using [NewsAPI](https://newsapi.org/)
- 📦 Uses **Cubit** for state management
- 🏗 Implements **MVVM** architecture
- 🛤 Navigation powered by **GoRouter**
- 🔗 Service locator pattern using **getIt** package
- 📱 Supports both **Android & iOS**

## 🛠 Technologies Used
- **Flutter** (Dart)
- **State Management:** Cubit
- **Navigation:** GoRouter
- **Dependency Injection:** getIt
- **API Integration:** NewsAPI
- **Architecture:** MVVM

## ⚙️ Installation & Setup

### 🔹 Requirements
- **Flutter SDK**: `3.24.3`
- **Dart** (included with Flutter)
- **Android Studio** / **VS Code** (for development)

### 🔹 Steps
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/newApp.git
   ```
2. Navigate to the project directory:
   ```sh
   cd newApp
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the application:
   ```sh
   flutter run
   ```

## 🔑 API Configuration
The app uses [NewsAPI](https://newsapi.org/) to fetch news. Ensure you have an API key and update the code accordingly:

```dart
const String apiKey = "your_api_key_here";
```

## 📸 Screenshots
(Add screenshots or GIFs of the application here)

## 🤝 Contribution
Feel free to contribute by submitting issues or creating pull requests.

## 📜 License
This project is licensed under the **MIT License**.

