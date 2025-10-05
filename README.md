# Mehak — Real Estate Data Analysis & AI

AI-powered real estate intelligence for urban planners, investors, and business owners.

Mehak is a Flutter-based data analysis and AI application designed to help users evaluate real estate parcels and determine optimal business placements. It intelligently quantifies the economic and spatial value of a location using data fusion and machine learning.

## Goal Features

- Smart Site Suitability
  - AI-driven recommendations for the most suitable business categories for a given parcel (e.g., retail, café, clinic, co-working space).

- Value Indicators
  - Numeric and visual indicators estimating:
    - Footfall Score
    - Revenue Potential Index
    - Visibility Score
    - Accessibility Index

- Interactive Maps
  - Explore properties on a map-based UI
  - View surrounding points of interest (POIs)
  - Toggle indicator overlays for deeper insights

- Data Fusion
  - Combines spatial data, demographics, POIs, and local amenities for robust and context-aware recommendations.

- Multi-language Support
  - Supports English and Arabic (RTL) for a global audience.

---

## Project Structure Overview

The repository follows a feature-first architecture, keeping UI, logic, and controllers together for better scalability.

Top level
- `lib/main.dart` — App entry point
- `assets/` — Static assets (images, SVGs, fonts, translations)

Shared / Common Code (`lib/common/`)
- `app_theme.dart` — Theme definitions (colors, text styles)
- `context_extension.dart` — BuildContext shortcuts
- `widget/` — Reusable widgets (buttons, form fields, etc.)

Feature modules (`lib/feature/`)
Each feature has its own folder under `lib/feature/`, with subfolders for `screen/`, `widget/`, and optional `controller/`.

### Key features and files

| Feature | Description | Key Files |
|---|---|---|
| Logo / Splash | App entry animation | `lib/feature/logo/screen/splash_screen.dart` |
| Onboarding | Introduction flow | `lib/feature/boarding/screen/boarding_screen.dart` |
| Login & OTP | Authentication flow | `lib/feature/login/screen/login_screen.dart`, `lib/feature/login/screen/otp_screen.dart` |
| Home / Map | Core map-based experience | `lib/feature/home/screen/home_screen.dart`, `lib/feature/home/widget/custom_google_map.dart` |
| Estate Cards | Parcel summary & detail cards | `lib/feature/home/widget/estate_card.dart`, `lib/feature/home/widget/estate_card_shimmer.dart` |
| Chat | User messaging interface | `lib/feature/chat/screen/chat_screen.dart` |
| Favorites | Saved parcels | `lib/feature/favorite/screen/favorite_screen.dart` |
| Account | Profile & settings | `lib/feature/account/screen/account_screen.dart` |

---

## Quick Start

### Prerequisites
- Flutter SDK (stable)
- Android Studio / Xcode for building & running the app

### Clone the repository
```bash
# Clone the project
git clone https://github.com/faisal-sa/hackathon_project.git

# Move into project directory
cd hackathon_project

# Get all dependencies
flutter pub get

# Run the app
flutter run
```

---

## Where to Find What

| Task | File Path |
|---|---|
| Map & overlays | `lib/feature/home/widget/custom_google_map.dart` |
| Estate cards & logic | `lib/feature/home/widget/estate_card.dart`, `lib/feature/home/controller/estate_cards.dart` |
| Navigation & tabs | `lib/feature/navigation/controller/navigation_controller.dart` |
| Chat UI | `lib/feature/chat/widget/message_card.dart` |
| Account & settings | `lib/feature/account/screen/account_screen.dart` |

---

## Tech Stack

| Category | Technology |
|---|---|
| Frontend | Flutter |
| AI / ML | TensorFlow / PyTorch (integrated models) |
| Maps | Google Maps API |
| Data | Spatial, demographic, and POI datasets |
| Localization | Flutter Intl with RTL support |

---

## Demo

(Coming soon: Screenshots, demo video, or GIF preview of app interactions.)

---

Project name: Mehak — Real Estate Data Analysis & AI
