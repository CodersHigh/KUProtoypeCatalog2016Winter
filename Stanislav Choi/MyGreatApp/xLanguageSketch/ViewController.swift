//
//  ViewController.swift
//  xLanguageSketch
//
//  Created by cscoi024 on 2016. 2. 22..
//  Copyright © 2016년 stanislav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var introductionLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var nativeLanguageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.layer.borderColor = UIColor.grayColor().CGColor
        introductionLabel.layer.borderColor = UIColor.grayColor().CGColor
        countryLabel.layer.borderColor = UIColor.grayColor().CGColor
        nativeLanguageLabel.layer.borderColor = UIColor.grayColor().CGColor
        
        nameLabel.layer.borderWidth = 1
        introductionLabel.layer.borderWidth = 1
        countryLabel.layer.borderWidth = 1
        nativeLanguageLabel.layer.borderWidth = 1
        
        nameLabel.layer.cornerRadius = 8
        introductionLabel.layer.cornerRadius = 8
        countryLabel.layer.cornerRadius = 8
        nativeLanguageLabel.layer.cornerRadius = 8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn")
        
        if !isUserLoggedIn {
            self.performSegueWithIdentifier("loginView", sender: self)
        }
    }
    
    @IBAction func logoutButtonTapped(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "isUserLoggedIn")
        NSUserDefaults.standardUserDefaults().synchronize()
        self.performSegueWithIdentifier("loginView", sender: self)
    }
}
