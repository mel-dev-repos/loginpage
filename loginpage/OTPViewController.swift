//
//  OTPViewController.swift
//  loginpage
//
//  Created by melina  on 03.10.26.
//

import UIKit

class OTPViewController: UIViewController {
    var emailValue : String?
    @IBOutlet weak var emailTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let  email =  emailValue  {
            emailTitle.text = email

        }
    }
    

   

}
