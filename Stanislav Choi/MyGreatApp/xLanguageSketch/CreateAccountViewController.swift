//
//  CreateAccountViewController.swift
//  xLanguageSketch
//
//  Created by cscoi024 on 2016. 2. 18..
//  Copyright © 2016년 stanislav. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    
    @IBOutlet weak var createAccountScrollView: UIScrollView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userSurnameTextField: UITextField!
    @IBOutlet weak var userIDTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBAction func userNameTextFieldDismiss(sender: AnyObject) {
        return
    }
    @IBAction func userSurnameTextFieldDismiss(sender: AnyObject) {
        return
    }
    @IBAction func userIDTextFieldDismiss(sender: AnyObject) {
        return
    }
    @IBAction func userPasswordTextFieldDismiss(sender: AnyObject) {
        return
    }
    @IBAction func repeatPasswordTextFieldDismiss(sender: AnyObject) {
        return
    }
    @IBAction func userEmailTextFieldDismiss(sender: AnyObject) {
        return
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAccountScrollView.contentSize.height = 1000
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        let name = userNameTextField.text
        let surname = userSurnameTextField.text
        let id = userIDTextField.text
        let password = userPasswordTextField.text
        let repeatPassword = repeatPasswordTextField.text
        let email = userEmailTextField.text
        
        if (name!.isEmpty || surname!.isEmpty || id!.isEmpty || password!.isEmpty || repeatPassword!.isEmpty || email!.isEmpty) {
            displayMyAlertMessage ("All fields are required")
            return
        }
        
        if (password != repeatPassword) {
            displayMyAlertMessage ("Passwords do not match")
            return
        }
        
        NSUserDefaults.standardUserDefaults().setObject(email, forKey : "userEmail")
        NSUserDefaults.standardUserDefaults().setObject(password, forKey : "userPassword")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        let myAlert = UIAlertController (title : "Thank You!", message : "Registration Completed", preferredStyle : UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction (title : "OK", style : UIAlertActionStyle.Default) {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
    
    func displayMyAlertMessage (userMessage : String) {
        let myAlert = UIAlertController (title : "Warning!", message : userMessage, preferredStyle : UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction (title : "OK", style : UIAlertActionStyle.Default, handler : nil)
        
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil)
    }
}
