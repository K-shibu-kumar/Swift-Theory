import CoreLocation


let locationManger = CLLocationManager()  // accessing the CLLocationManager() Class


// Inside viewDidLoad
locationManger.requestWhenInUseAuthorization() // Request for accessing current location, Also make changes in plilist for user prompt
locationManger.requestLocation() // One time location suitable for Weather app
locationManger.startUpdatingLocation() // Useful in Fitness or Nav Apps
