# cities_of_the_world

Cities of the World, Users will be able to see cities of the world with name, country and their locations.

## Features

- Displays city data with options for both list and map views.
- Infinite scroll for loading more cities as the user scrolls.
- Data filtering by different city attributes (e.g., country name).
- Local data caching using Hive for offline support.
- Easy-to-use UI with custom components and Flutter BLoC for state management

## Tech Stack

- **Flutter**: A UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Flutter BLoC**: State management solution used to manage app state and business logic.
- **Dio**: A powerful HTTP client for interacting with the backend API.
- **Freezed**: Data classes for immutability and code generation.
- **Hive**: Local database options for storing city data offline.
- **infinite_scroll_pagination**: Provides infinite scrolling for list data.

# Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/tareq3/CitiesOfTheWorldFlutter.git
   ```
2. ```bash
   cd cities_of_the_world
   flutter pub get
   dart run build_runner watch

   ```
# Note: "I've included my map's API key in the project, so you can run the application on your machine as well." 

