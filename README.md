# 🍽️ Recipe App with Flutter

This is a project developed in Flutter that simulates a recipe app. It allows the user to browse meal categories, view recipe details, manage their favorites, and adjust preferences in the settings menu.

## 📱 Demo

<p align="center">

<img src="assets/demo/demo_gif_1.gif" alt="App Demo 1" width="300"/>
<img src="assets/demo/demo_gif_2.gif" alt="App Demo 2" width="300"/>
</p>

## 📱 Features

- Navigation by **meal categories**
- Viewing **meal details**
- Adding and removing meals from **favorites**
- **Settings** screen to apply diet filters
- **Tabbed** interface for easier navigation

## 🧠 Key Learnings

During the development of this app, several essential Flutter concepts were addressed and reinforced. Key highlights include:

### ✅ Use of Named Routes

Navigation between screens was organized using **named routes**, centralized in the `app_routes.dart` file, facilitating maintenance and avoiding the use of loose strings in the code:

```dart
class AppRoutes {

static const HOME = '/';

static const CATEGORIES_MEALS = '/categories-meals';

static const MEAL_DETAIL = '/meal-detail';

static const SETTINGS = '/settings';
}
```

This ensures a clean and safe navigation flow between the main screens such as:

- `CategoriesScreen`
- `CategoriesMealsScreen`
- `MealDetailScreen`
- `SettingsScreen`

### 🧩 Screen Organization

Each screen was created in a separate file, reinforcing the modularity of the project. The main screens are:

- `CategoriesScreen`: Shows meal categories
- `CategoriesMealsScreen`: Lists meals in the selected category
- `MealDetailScreen`: Displays details of a specific meal
- `FavoriteScreen`: Lists favorite meals
- `SettingsScreen`: Allows you to apply filters (gluten-free, lactose-free, etc.)
- `TabsScreen`: Controls tabbed navigation between "Categories" and "Favorites"

### 🔁 Tabbed Navigation

The `BottomNavigationBar` was used to switch between two main sections:

- **Categories**

- **Favorites**

This was implemented in the `TabsScreen`, ensuring a fluid and intuitive experience.

### ⚙️ Custom Filters

The `SettingsScreen` allows the user to apply filters, and these preferences are passed as parameters to update the list of displayed meals.

---

## 📂 File Structure

```
lib/
├── components/
│ ├── category_item.dart
│ ├── main_drawer.dart
│ └── meal_item.dart
├── date/
│ └── dummy_data.dart
├── app_routes.dart
├── models/
│ ├── category.dart
│ ├── meal.dart
│ └── settings.dart
├── screens/
│ ├── categories_screen.dart
│ ├── categories_meals_screen.dart
│ ├── favorite_screen.dart
│ ├── meal_detail_screen.dart
│ ├── settings_screen.dart
│ └── tabs_screen.dart
├── utils/
│ └── app_routes.dart
└── main.dart

```

---

## 📌 Notes

This project was developed for educational purposes as part of a Flutter learning journey. The focus is on the correct use of:

- Named routes
- Simple state management with `setState`
- Modularization with multiple screens
