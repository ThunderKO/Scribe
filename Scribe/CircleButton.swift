//
//  CircleButton.swift
//  Scribe
//
//  Created by KO TING on 6/5/2017.
//  Copyright © 2017年 EdUHK. All rights reserved.
//

import UIKit

@IBDesignable
class CircleButton: UIButton {
    
    //Create a new attribute in the attribute inspector so that we can change the cornerRadius easily in the main.storyboard
    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        didSet {
            setUpView()
        }
    }
    
    //That make us see the changes in the main.storyboard without compling it in the simulator
    override func prepareForInterfaceBuilder() {
        setUpView()
    }
    
    func setUpView() {
        layer.cornerRadius = cornerRadius
    }
    
}
