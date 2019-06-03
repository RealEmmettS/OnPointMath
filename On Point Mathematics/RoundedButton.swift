//
//  File.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 1/12/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import Foundation
import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        //Border size and color
        layer.borderWidth = 3/UIScreen.main.nativeScale
        layer.borderColor = UIColor.blue.cgColor
        
        //Font (Have not-system font installed for UIButton before un-commenting) (Let's text adjust to device text size)
        //titleLabel?.adjustsFontForContentSizeCategory = true
        
        //Edges of Button
        layer.cornerRadius = frame.height/1
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height/2
        layer.borderColor = isEnabled ? tintColor.cgColor : UIColor.lightGray.cgColor
    }

    
}

