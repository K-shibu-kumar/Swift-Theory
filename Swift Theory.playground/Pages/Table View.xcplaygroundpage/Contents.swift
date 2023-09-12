///# Table View Controller

// :- Create a ViewController separately
// :- Add a Table view customisable
// :- Set the identifier (this works like a image view)
// :-




///# UITableViewDataSource

///* Use this to customise the cell we created , supports upto iOS 13



///  or

///# Adding A Table View as the default VC

///# Add a TableView from library
///# Set this as The 1st VC in storyboard
///# In VC file-> Set the data type as UITableViewController
///# here Xcode will take care of the delegates and data source automatically


///# Cell

///* To populate data in cell row:-
// cell.textLabel.text = anArray[indexPath.row]


///# TableView Delegate MNethods

// To select and edit a row:-

//override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    print(itemArray[indexPath.row])
//
//    tableView.deselectRow(at: indexPath, animated: true)// To remove the animation gary selection 
//}
