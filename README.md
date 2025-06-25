# Snackish – Flutter Ordering App

Snackish is a vibrant, animated Flutter app that brings desserts to life with a frosted-glass UI, dynamic menu cards, and fun order interactions. Designed to demonstrate creative UI skills and component architecture in Flutter.

## Features

- Animated splash screen with marquee text and cupcake reveal
- Beautiful product cards with glassmorphism and hero images
- Favorite buttons with live like counts
- Portion size selection and quantity adjustments
- Add to order with dynamic price calculation and feedback popups
- Cleanly animated screen transitions

## Built With

- **Flutter** & **Dart**
- **Custom animations** using `AnimationController` and `SlideTransition`
- **Provider-style widget state management**
- **Marquee text** animation
- **Frosted glass cards** using `BackdropFilter`
- **Responsive layout** and visual effects

## Folder Structure Highlights

- `splash/` – Splash screen logic and animated text
- `home/` – Main menu, card displays, and menu interaction
- `models/menu.dart` – Sample product data with portion-based pricing
- `card_widgets/` – Reusable frosted-glass and styled card components
- `buttons/` – Custom buttons styled with gradients and shadows

## Learning Highlights

- Created complex staggered animations for splash flow
- Built a reusable menu system with dynamic pricing
- Designed glass UI elements with Flutter’s `BackdropFilter`
- Implemented animated favorites and ordering logic
- Practiced modular code organization and UI layering

## Future Ideas

- Firestore backend for orders and user accounts
- Persistent favorites with local storage
- Cart and checkout system
- Multilingual support and theming

## Screenshots
- [Spashscreen](assets/screenshots/sim_1.png)
- [Home Screen](assets/screenshots/sim_2.png)
- [Order Screen](assets/screenshots/sim_3.png)