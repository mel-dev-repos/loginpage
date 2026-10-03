//
//  CustomizedButton.swift
//  loginpage
//
//  Created by melina  on 01.10.26.
//


import UIKit

class CustomizedButton:UIButton {
    
    func setUpStyle(){
        backgroundColor = .custom
        titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        layer.cornerRadius = 12
        widthAnchor.constraint(equalToConstant:370).isActive = true

    }
   
    
}
