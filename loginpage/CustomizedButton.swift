//
//  CustomizedButton.swift
//  loginpage
//
//  Created by melina  on 01.10.26.
//


import UIKit

class CustomizedButton:UIButton {
    
    func setUpStyle(){
      backgroundColor = .systemYellow
        titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        widthAnchor.constraint(equalToConstant: 200).isActive = true

    }
   
    
}
