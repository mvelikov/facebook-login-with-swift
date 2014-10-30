//
//  ViewController.swift
//  Login with Swift iOS App
//
//  Created by Mihail Velikov on 10/30/14.
//  Copyright (c) 2014 Mihail Velikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBLoginViewDelegate {

    var fbUser : FBGraphUser?
    
    @IBOutlet var fbLoginView : FBLoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
    }
    
    // Facebook Delegate Methods
    
    func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
        println("User Logged In")
    }
    
    func loginViewFetchedUserInfo(loginView : FBLoginView!, user: FBGraphUser) {
        println("User Name: \(user.name)")
        fbUser = user
        performSegueWithIdentifier("showUserDetails", sender: fbLoginView)
    }
    
    func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
        println("User Logged Out")
    }
    
    func loginView(loginView : FBLoginView!, handleError:NSError) {
        println("Error: \(handleError.localizedDescription)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender as FBLoginView == fbLoginView {

            let destinationController: UserDetailsViewController = segue.destinationViewController as UserDetailsViewController
            destinationController.userName = fbUser?.name
        }
    }
}

