///# HTTP Request using URLSession

///*To make an HTTP call in Swift, you can use the built-in URLSession framework. Here's a basic example of how to create an HTTP GET request:

import Foundation

// Define the URL for the API endpoint you want to call
let urlStrings = "https://rest.coinapi.io/v1/exchangerate/BTC/APIKEY-0520432D-4CC8-465D-9B19-04C2D182E2B7/BRL"

// Create a URL object from the string
if let url = URL(string: urlStrings) {
    // Create a URLSession instance
    let session = URLSession.shared

    // Create a URLSession data task
    let task = session.dataTask(with: url) { data, response, error in
        if let error = error {
            // Handle the error
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

///*In this example, we're making a simple GET request to an API endpoint, handling the response, and parsing the JSON data if available. You can modify this code to make different types of HTTP requests (e.g., POST, PUT) or customise the headers, etc., based on your specific needs.





///# Another example


///*To perform an HTTP request using URLSession in Swift, you can follow these steps:

///*Import Foundation framework, as URLSession is part of it.
///*Create a URLSession instance.
///*Create a URLSessionDataTask with the request, and define a completion handler to process the response.
///*Start the data task to initiate the HTTP request.
///
//Here's a basic example of making an HTTP GET request:


// Define the URL you want to make the request to
let urlString = "https://jsonplaceholder.typicode.com/posts/1"

// Create a URL object from the string
if let url = URL(string: urlString) {
    // Create a URLSession instance
    let session = URLSession.shared

    // Create a URLSessionDataTask with the request and completion handler
    let task = session.dataTask(with: url) { data, response, error in
        if let error = error {
            // Handle the error
            print("Error: \(error)")
            return
        }

        // Check the HTTP response
        if let httpResponse = response as? HTTPURLResponse {
            if httpResponse.statusCode != 200 {
                print("HTTP Error: \(httpResponse.statusCode)")
                return
            }
        }

        // Process the data
        if let data = data {
            do {
                // Assuming the response data is in JSON format
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print("Response: \(json)")
            } catch {
                print("JSON Error: \(error)")
            }
        }
    }

    // Start the data task
    task.resume()
} else {
    print("Invalid URL")
}

///*This example makes an HTTP GET request to retrieve a JSON response from the "https://jsonplaceholder.typicode.com/posts/1" URL. The response is then parsed and printed to the console.

///*Keep in mind that URLSession works asynchronously, so the request will be executed on a background thread, and the completion handler will be called once the request is complete. Always make sure to handle errors and responses properly based on the specific requirements of your application.


