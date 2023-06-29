// Json Parsing

/*
 JavaScriptObjectNotation
 
 In Swift using the default method JSONDecoder() we are decoding the JSON data
 
 do try catch :- do the method, try the syntax, catch if any error
 
 WeatherManager.vc
 
 func parseJSON(weatherData: Data){
     let decoder = JSONDecoder()
     do {
         let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
         print(decodedData.name)
     } catch {
         print(error)
     }
     
 }
 
 
 Formatting the JSON data using custom structs
 
 WeatherData.vc
 
 struct WeatherData: Decodable {
     
     let name: String
     let main: Main
     let weather: [Weather]
     
 }

 struct Main: Decodable {
     let temp: Double
 }

 struct Weather: Decodable {
     let description: String
 }

 
 */
