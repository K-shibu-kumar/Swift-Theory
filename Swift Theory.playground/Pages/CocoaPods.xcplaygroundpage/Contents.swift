///# CocoaPods


///# 1: Open the Parent folder path in Terminal


///# 2: Create a podFile:   pod init

///# 3: Specify Pod Dependencies:

// Example
//platform :iOS, '12.0'
//use_frameworks!
//
//target 'YourProjectName' do
//  pod 'Alamofire'
//  pod 'SwiftyJSON'
//end


///# 4: Install pods: pod install

///# 5: open YourProjectName.xcworkspace

///# 6: Command + B : Check for error

///* 1: Check the platform :iOS, version
///* 2: Check the repo for latest release :
///* Edit the podFile  : pod 'SwiftyJSON' , '~> 1.0'
///* Terminal : pod install



///# Usage of Pods:
 
///* Change the class to podClass in which element we need change
///* import "pod"
///* change the data type to "pod"


///# List Of Useful Commands

///*  pod init - Create the initial Podfile file for you.
///*  pod install - Install the dependencies based on Podfile.lock file.
///*  pod update - Update the dependencies based on Podfile file.
///*  pod update <dependency name> - Update a dependency based on Podfile file.
///*  pod repo update - Update the local Specs repository, that is no more update on 'pod install', but only on 'pod update'.
///*  pod outdated - Show the outdated dependencies.
///*  pod try <dependency name> - Lets you try a dependency.
///*  pod deintegrate - Removes all the CocoaPods integration in the project.
