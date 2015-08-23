//
//  DetailViewController.swift
//  contacts
//
//  Created by Quabblejack.com on 8/23/15.
//  Copyright (c) 2015 CQ. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneNumberField: UITextField!
    var contact: Contact?
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.delegate = self
        self.phoneNumberField.delegate = self
        
        func textFieldDidEndEditing(textField: UITextField) {
            if textField == self.nameField {
                self.contact?.name = textField.text
            } else if textField == self.phoneNumberField {
                self.contact?.phoneNumber = textField.text
            }
        }
        
    
         func viewDidLoad() {
            super.viewDidLoad()
            
            if let contact = self.contact {
                if let name = contact.name {
                    self.nameField.text = name
                }
                if let phoneNumber = contact.phoneNumber {
                    self.phoneNumberField.text = phoneNumber
                }
            }
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
