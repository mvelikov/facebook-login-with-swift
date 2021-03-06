//
//  UserDetailsViewController.swift
//  Login with Swift iOS App
//
//  Created by Mihail Velikov on 10/30/14.
//  Copyright (c) 2014 Mihail Velikov. All rights reserved.
//

import UIKit

class UserDetailsViewController: UIViewController {
    
    var userName: String?
    var userProfileId: String?
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet weak var userProfileImageView: FBProfilePictureView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameLabel.text = userName
        userProfileImageView.profileID = userProfileId
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
