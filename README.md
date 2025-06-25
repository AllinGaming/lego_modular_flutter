# Lego Modular Flutter App

A modular Flutter project following clean architecture principles using:

- `Melos` for workspace management
- `auto_route` for global navigation
- `flow_builder` for feature-based navigation
- `flutter_bloc` for state management
- `injectable` + `get_it` for dependency injection

## 🗂 Project Structure

```
.
├── app/
│   ├── lego_app/           # Root app entry point
│   └── lego_navigation/    # Global navigation (AutoRoute)
├── core/
│   └── design_system/      # Shared UI components and styles
├── feature/
│   ├── lego_list/          # List feature with FlowBuilder and Bloc
│   └── lego_single/        # Single item feature
```

## 🚀 Getting Started

```bash
melos bootstrap
melos run build
flutter run run # to run on Windows
```

## ✅ Features

- Modular packages with proper separation of concerns
- AutoRoute-powered centralized navigation
- Dependency injection per feature
- Bloc + FlowBuilder stateful UI
- Prepared for CI/CD

## 🧰 Tooling

- Dart/Flutter
- Melos
- AutoRoute
- Injectable
- Flutter Bloc
- Flow Builder
