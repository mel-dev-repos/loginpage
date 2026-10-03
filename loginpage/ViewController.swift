//
//  ViewController.swift
//  loginpage
//
//  Created by melina  on 25.09.26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: CustomizedButton!

    @IBOutlet weak var emailField: UITextField!
     var otpView = OTPViewController ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.setUpStyle()
        
    }
    

    @IBAction func LoginPressed(_ sender: Any) {
        if let emailText = emailField.text,  !emailText.isEmpty {
            performSegue(withIdentifier: "login", sender: self)

        }else {
            print("email is empty")
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "login" {
            let destinationVc = segue.destination as! OTPViewController
            destinationVc.emailValue = emailField.text ?? ""
        }
    }
    
}

