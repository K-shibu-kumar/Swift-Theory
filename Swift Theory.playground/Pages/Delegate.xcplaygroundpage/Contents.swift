// Delegates Design Pattern


/*It's a protocol
 
A Delegate is like a template created by Apple inside Swift, which also a protocol. So in order to implement a Delegate we should adopt the protocol. In to the Class or struct.
Protocol:
 protocol UITextFieldDelegate {
 func textFieldDidBeginEditing()
 }
 

Delegate:
 UITextField
 var delegate: UITextViewDelegate
 delegate.textFieldDidBeginEditing()
 
 Sequence of events When implementing A Delegate:
 1: The object that support a delegate reusable template "UITextField" is referred in our code
 let textField = UITextField()
 2: Now change the data type of current VC we are working on by tap in to the property of the delegate and assign it to self(ie; VC)
 textField.delegate = self
 3: Now when the user type editing the method inside the Delegate get triggered and the prop delegate give that value to VC. Now that our VC supports that delegates data type the triggered method run and the func we wrote inside will too
 func textFieldDidBeginEditing(){
 //Do something here
 }

 

Ref:
 Clima.App
 UITextFieldDelegate
 
 
 
 The whole point of this is we need a specific func to run
 Inheritance adopts the whole methods, sure we can override func but it's way too complicated and we need to write from scratch.
 With the help of protocols and Delegate pattern method we can call any delegate in to any class as long as we follow the above steps.


 */
 
 
