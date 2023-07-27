///# Contants file

///*In Swift development, a "constants file" refers to a file where you store constant values that remain unchanged throughout the execution of your application. These constants can include numerical values, strings, URLs, keys, or any other data that should not be modified during the app's runtime.

//Using a constants file has several advantages:

///* Centralised Management: By storing all constants in a single file, you can easily manage and update them from one place. This avoids scattering the same value across multiple files, making maintenance more straightforward.
///* Readability and Maintainability: Constants files improve the readability of your code by giving meaningful names to constant values. This way, you can use descriptive names for values, making it easier to understand the purpose of each constant.
///* Avoiding Magic Numbers and Strings: Magic numbers and strings are hard-coded values used directly in the code, which can make it difficult to understand their significance. Constants help eliminate magic numbers and strings by giving them proper names.
///* Changing Values Without Rebuilding: If you need to adjust a constant value, you can simply modify it in the constants file without rebuilding the entire app. This can be beneficial when tweaking the app's behaviour without going through a full deployment process.

///# Here's an example of how you can create a constants file in Swift:

//Create a new Swift file, e.g., "Constants.swift."
//Define your constants as static properties of a struct or a class within the file.
//Group the constants based on their purpose or relevance.

// Constants.swift

struct AppConstants {
    static let maximumItemCount = 100
    static let defaultUsername = "guest"
    static let apiBaseUrl = "https://api.example.com"
}

struct APIKeys {
    static let weatherAPIKey = "YOUR_WEATHER_API_KEY"
    static let mapAPIKey = "YOUR_MAP_API_KEY"
}
//You can then use these constants throughout your application by referencing the struct and property names directly:


let url = URL(string: "\(AppConstants.apiBaseUrl)/endpoint")
let apiKey = APIKeys.weatherAPIKey
//By following this approach, you can maintain a clear separation between your constants and the rest of your code, making your Swift project more organized and easier to maintain.
