///# VCLifeCycle


///# In Swift, when working with UIKit to create iOS applications, you'll often work with view controllers to manage the presentation and behavior of your app's user interface. The view controller lifecycle refers to the series of events that occur as a view controller is loaded, displayed, and eventually dismissed or removed from the screen. Understanding the view controller lifecycle is crucial for managing resources, handling user interactions, and ensuring a smooth user experience.

//Here's an overview of the typical view controller lifecycle methods and their order of execution:

///* 1. `init(coder:)` or `init(nibName:bundle:)`: The initialisation methods are called when the view controller is first instantiated from a storyboard or programmatically. These methods are responsible for setting up initial properties and allocating any resources needed.

/// 2. `loadView()`: This method is responsible for creating or loading the view hierarchy that the view controller will manage. If you're using Interface Builder (storyboards or xib files), this method might be automatically generated for you.
///* 3. `viewDidLoad()`: This method is called once the view hierarchy is loaded into memory. It's a good place to perform additional setup that requires the view to be loaded, such as initializing data, setting up UI components, and performing non-layout related customizations.

///* 4. `viewWillAppear(_:)`: Called just before the view is about to be added to the view hierarchy and become visible. This is where you might perform tasks like updating data or UI based on the current state.

///* 5. `viewDidAppear(_:)`: Called after the view has been added to the view hierarchy and is visible to the user. This is a good place to start animations, initiate network requests, or trigger any actions that require the view to be on screen.
///* 6. `viewWillDisappear(_:)`: Called just before the view is about to be removed from the view hierarchy. Use this method to clean up resources, save data, or perform any necessary tasks before the view disappears.

///* 7. `viewDidDisappear(_:)`: Called after the view has been removed from the view hierarchy. This is where you might stop animations, cancel network requests, or perform other cleanup tasks.

///* 8. `deinit`: The deinitialization method is called when the view controller is being deallocated from memory. This is your last chance to release any resources or perform final cleanup.

///# It's important to note that not all of these methods are guaranteed to be called in every situation. For example, if a memory warning occurs, some methods might not be called. Additionally, presenting and dismissing modal view controllers can also affect the order in which these methods are executed.
