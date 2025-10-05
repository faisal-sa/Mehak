# Mehak — Real Estate Data Analysis & AI

Mehak is a Flutter-based data analysis and AI application that helps urban planners, investors, and business owners evaluate real estate and land parcels to determine the most suitable businesses to place at a location and to quantify the expected value contribution of a site.

Goal Features
- Smart site suitability: AI models that recommend suitable business categories for a given parcel (e.g., retail, café, clinic, co-working).
- Value indicators: Numeric and visual indicators estimating potential value (footfall score, revenue potential index, visibility score, accessibility index).
- Interactive maps: Map-based UI to inspect parcels, surrounding points of interest (POI), and indicator overlays.
- Data fusion: Combines spatial data, POI, demographics, and local amenities for robust recommendations.
- Multi-language support: English and Arabic translations with RTL support.

Project structure:

The repository is a Flutter app organized by features and shared common code. Below is an expanded tree of the most relevant directories and a short description.

Top-level
- `lib/main.dart` — App entry, app-level routing and initial bindings.
- `assets/` — Static assets (images, svg, fonts, translations).

Shared/common
- `lib/common/` — App-wide utilities, theming, context extensions and small reusable widgets.
  - `app_theme.dart` — Theme definitions (colors, text styles).
  - `context_extension.dart` — Shortcuts for BuildContext (padding, sizes, locale helpers).
  - `widget/` — Reusable UI widgets (generic form fields, input controls).

Feature modules
The codebase follows a feature-first layout under `lib/feature/`. Each feature generally contains `screen/`, `widget/`, and optional `controller/` folders.

- `lib/feature/boarding/`
  - `screen/boarding_screen.dart` — Onboarding flow screens and logic.
  - `widget/intro_card.dart` — UI card used in onboarding pages.

- `lib/feature/logo/`
  - `screen/splash_screen.dart` — Splash / logo animation entry screen.
  - `widget/` — Several small logo widgets and a `controller/` used for animation/timing.

- `lib/feature/login/`
  - `screen/login_screen.dart`, `screen/otp_screen.dart` — Login and OTP verification flows.
  - `widget/` — Reusable login widgets: text fields, phone/OTP inputs and buttons.

- `lib/feature/navigation/`
  - `screen/navigation_screen.dart` — Main navigation / shell for the app.
  - `controller/navigation_controller.dart` — Navigation state and tab management.

- `lib/feature/home/`
  - `screen/home_screen.dart` — Main map-based exploration UI.
  - `controller/estate_cards.dart`, `controller/overlay_control.dart` — Controllers for cards and overlay state.
  - `widget/custom_google_map.dart` — Map integration and overlays.
  - `widget/estate_card.dart`, `widget/estate_card_shimmer.dart` — Cards that show parcel/estate summaries and loading shimmer.
  - `widget/filter.dart`, `widget/search.dart` — Search and filter UI components.
  - `widget/scrollable_sheet.dart` — Bottom sheet used to surface details and card lists.

- `lib/feature/card_details/`
  - `screen/card_details_screen.dart` — Detailed view for a single parcel or listing.

- `lib/feature/chat/`
  - `screen/chat_screen.dart`, `screen/messages_screen.dart` — Chat UI and message list screens.
  - `widget/chat_app_bar.dart`, `widget/chat_container.dart`, `widget/message_card.dart` — Chat UI components.

- `lib/feature/favorite/`
  - `screen/favorite_screen.dart` — Saved / bookmarked parcels.
  - `widget/favorite_app_bar.dart` — Header for favorites screen.

- `lib/feature/account/`
  - `screen/account_screen.dart` — Account settings and profile UI.
  - `widget/account_app_bar.dart` — App bar for account screens.


Where to look for common tasks (quick links)
- Map & overlays: `lib/feature/home/widget/custom_google_map.dart`
- Estate cards & card logic: `lib/feature/home/widget/estate_card.dart`, `lib/feature/home/controller/estate_cards.dart`
- Onboarding & splash: `lib/feature/logo/screen/splash_screen.dart`, `lib/feature/boarding/screen/boarding_screen.dart`
- Auth & OTP: `lib/feature/login/screen/login_screen.dart`, `lib/feature/login/screen/otp_screen.dart`

This layout keeps UI, state, and small controllers collocated by feature which simplifies navigation and makes it easier to add or remove features without affecting unrelated code.

Quick start

Prerequisites
- Flutter SDK (stable)
- Android Studio / Xcode for platform builds

Install dependencies and run:

```powershell
flutter pub get
flutter run
```

## Demo








Project name: Mehak
