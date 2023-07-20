/*
 
1.
 Constrains:- from safe area, view or container
 Alignment:- horizontally and vertically from the screen, or from the container.
 Container View :-
 Stack View:-
 Table View:-
 
 
 
2.
 Segue:-
 To make a connection; Parent Vc - Ctrl click - drag and drop in - Next VC ; Select the segue connection - Attributes - Identifier - Name identifier
 Snippet:
 IBAction func {, then the below happens
 self.performSegue(withIdentifier: "goToResult", sender: self)
 // value is carried to 2nd VC
 }

 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Preparing the segue connection to connect to Desired ViewController.
 if segue.identifier == "goToResult" {
     let destinationVC = segue.destination as! ResultViewController
 }
     // checks If segue identifier matches with name given to segue connection. If it matches. changing the segue data type in to desired VC to access its props and methods
 
 
 
3.
 Dark Mode:-
 When changing modes the colour and Background image can be customised
 Custom Colour : By default selecting a system colour or label colour will work just fine. But In order to use a custom colour that automatically respond to system modes, Color picker(Select a colour, drag and drop to square pallet.)
 Assets.xcassets - colour - Chose colours for modes - Save the asset colour set
 Custom Background: Drag and drop normal or vector image , make the changes needed. In order to use the dark mode ; Appearance: Select from the dropdown menu.
 
 
 
4.
 Vector Assets:-
 Vector images like .pdf files uses calculations to modify pixelations, So the image will stay sharp always can be used instead of .jpeg or .png's, Those pixelate while zooming. Change these aspects when using a vector image ; Resize : Preserve Vector Data, Scales: Single Scale (no more 1X, 2X or 3X needed), Use drag and drop to place a Vector image
 
 
 
5.
 UITextFIeld:-
 By default there are parameters in the system to handle different modes by changing the text colour inside UITextField. Here in attributes handle all the keyboard props of the smartphone. Text Input Traits; Each first word to CAPITAL, Secured passkey doesn't show the words, return key to 'Go' or something
 
 UITextField Delegate:
 Initialising the delegate : class ViewController , UITextFieldDelegate { ,
 inside viewDidLoad: delegate will talks to VC
 uiTextFieldName.delegate = self (ie; UIVC)
 
 textFieldShouldReturn:
delegate is asking what to do when the return key is pressed
 Snippet: Method
 func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     <#code#>
     return true
 To dismiss the the keyboard: nameOfTheUITF.endEditing(true)
 
 textFieldDidEndEditing:
 delegate saying the user stopped typing. This method triggers only after the .endEditing is true
 Snippet: Method
 func textFieldDidEndEditing(_ textField: UITextField) {
     <#code#>
 }
 
 textFieldShouldEndEditing:
 delegate asking the user stopped editing, what should it do
 scenario; user did not type anything but pressed Go or search button. .endEditing(true) got triggered. delegate textFieldDidEndEditing also got triggered
 snippet:
 func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
     if textField.text != "" {
      return true
     } else {
         textField.text = "Type Something!"
         return false
     }
 

 
 
 
6.
 If your app has a long running task, such as making network call, run it on a global system queue, or on another background dispatch queue. Alternatively, use asynchronous versions of the call, if available.
 
 DispatchQueue.main.async {
     self.temperatureLabel.text = weather.temperatureString
 }
 

 
 
 
 */
