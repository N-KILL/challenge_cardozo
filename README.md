# challenge_cardozo

## Project Execution

1. **Install dependencies**
   ```bash
   flutter pub get
   ```

2. **Generate required source code (Riverpod)**
   > Before starting the app, run the following command to generate the necessary files for Riverpod:
   ```bash
   dart run build_runner build -d
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

## Technical decisions

- **Flutter**: Main framework for cross-platform development.
- **Riverpod**: Used for state management due to its robustness and ease of testing.
- **build_runner**: Required for automatic code generation related to Riverpod.
- **freezed**: To create the models of the app based on the API. Also used JSON Serializable.
- **Modular structure**: The project is organized in modules to facilitate maintenance and scalability, 
all modules are divided by features - data(Repositories)/domain(Entities)/presentation(Screens, Widgets, Etc.),

## Relevant information

- Make sure you have Flutter and Dart installed in your environment.
- The command `dart run build_runner build -d` is mandatory before running the app if you have made changes to Riverpod providers.
- The project follows best development practices and is prepared for testing and continuous deployment.

## Deployed page URL

[https://challenge-tres-astronautas.web.app](https://challenge-tres-astronautas.web.app)

### Notes
There's two branches, main and web. The only difference is web, have a dependency to read the images in the web 
app version, avoiding the CORS policy. That is not required on the android or desktop app. So just use main version
