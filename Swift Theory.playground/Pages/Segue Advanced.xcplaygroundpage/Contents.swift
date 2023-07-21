///# Segue:-


///*To make a connection; Parent Vc - Ctrl click - drag and drop in - Next VC ; Select the segue connection - Attributes - Identifier - Name identifier
///#Snippet:
/*
IBAction func {, then the below happens
self.performSegue(withIdentifier: "goToResult", sender: self)
// value is carried to 2nd VC
}

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
// Preparing the segue connection to connect to Desired ViewController.
if segue.identifier == "goToResult" {
    let destinationVC = segue.destination as! ResultViewController
}
*/
    ///* checks If segue identifier matches with name given to segue connection. If it matches. changing the segue data type in to desired VC to access its props and methods


///* You can control click a 'buttonView' to a VC to make a simple segue View connection. From RootVC , select  Editor - Embed In - Navigation control (for navigation buttons and fullscreen view of each VC)
