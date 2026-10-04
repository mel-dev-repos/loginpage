//
//  CustomizedButton.swift
//  loginpage
//
//  Created by melina  on 01.10.26.
//


import UIKit

class CustomizedButton:UIButton {
    
    
    override var isEnabled: Bool {
        didSet {
                   alpha = isEnabled ? 1 : 0.5
               }
    }
    
    
    func setUpStyle(){
        backgroundColor = .custom
        titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        titleLabel?.textColor = .white
        layer.cornerRadius = 12
        widthAnchor.constraint(equalToConstant:370).isActive = true
        heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
  
    
}

