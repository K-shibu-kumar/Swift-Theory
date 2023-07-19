// HTTP Request using URLSession

/*To make an HTTP call in Swift, you can use the built-in URLSession framework. Here's a basic example of how to create an HTTP GET request:
*/

import Foundation

// Define the URL for the API endpoint you want to call
let urlString = "https://rest.coinapi.io/v1/exchangerate/BTC/APIKEY-0520432D-4CC8-465D-9B19-04C2D182E2B7/BRL"

// Create a URL object from the string
if let url = URL(string: urlString) {
    // Create a URLSession
    let session = URLSession.shared

    // Create a data task
    let task = session.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error: \(error)")
            return
        }

        guard let httpResponse = response as? HTTPURLResponse else {
            print("Invalid HTTP response")
            return
        }

        if httpResponse.statusCode == 200 {
            // Request was successful, process the data
            if let data = data {
                // Parse the data (if it's JSON data, for example)
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
                    // Now you can work with the jsonObject
                    print("Response: \(jsonObject)")
                } catch {
                    print("Error parsing JSON: \(error)")
                }
            } else {
                print("No data received")
            }
        } else {
            print("HTTP Error: \(httpResponse.statusCode)")
        }
    }

    // Start the data task
    task.resume()
} else {
    print("Invalid URL")
}

/*
 In this example, we're making a simple GET request to an API endpoint, handling the response, and parsing the JSON data if available. You can modify this code to make different types of HTTP requests (e.g., POST, PUT) or customise the headers, etc., based on your specific needs.
 */
