//
//  OTPViewController.swift
//  loginpage
//
//  Created by melina  on 03.10.26.
//

import UIKit
import DPOTPView

class OTPViewController: UIViewController {
    @IBOutlet weak var otpLogin: CustomizedButton!
    var emailValue : String?
    @IBOutlet weak var otpView: DPOTPView!
    @IBOutlet weak var emailTitle: UILabel!
    
    @IBAction func loginTab(_ sender: CustomizedButton) {
        
        let otp = otpView.text ?? ""
        if  otp.count == 4 {
            otpLogin.isEnabled = true
            print(otp)
        }else {
            otpLogin.isEnabled = false
        }
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        otpLogin.isEnabled = false
        otpLogin.setUpStyle()
    
        
        if let  email =  emailValue  {
            emailTitle.text = email

        }
        otpView.count = 4
           otpView.spacing = 12
           otpView.cornerRadiusTextField = 8
           otpView.borderWidthTextField = 1
           otpView.borderColorTextField = .systemGray3
           otpView.selectedBorderWidthTextField = 2
        otpView.dpOTPViewDelegate = self
           otpView.selectedBorderColorTextField = .systemBlue
           otpView.dismissOnLastEntry = true
           otpView.becomeFirstResponder()
    }
    

   

}
extension OTPViewController: DPOTPViewDelegate {

    func dpOTPViewAddText(_ text: String, at position: Int) {
        otpLogin.isEnabled = (text.count == 4)
    }

    func dpOTPViewRemoveText(_ text: String, at position: Int) {
        otpLogin.isEnabled = false
    }

    func dpOTPViewChangePositionAt(_ position: Int) {}
    func dpOTPViewBecomeFirstResponder() {}
    func dpOTPViewResignFirstResponder() {}
}



