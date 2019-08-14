//
//  UltimateButtonProject.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 6/2/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import UIKit
import Foundation
@IBDesignable

class UltimateButton: UIButton {
    
    var ButtonColor: UIColor = UIColor.blue
    var ButtonSize: CGFloat = 1
    
    
    @IBInspectable var MainColor: UIColor = UIColor.blue{
        didSet{
            self.layer.borderColor = MainColor.cgColor
            self.tintColor = MainColor
            self.setTitleColor(MainColor, for: .normal)
            
            self.ButtonColor = MainColor
        }
    }
    
//    @IBInspectable var BorderSize: CGFloat = 3/UIScreen.main.nativeScale{
//        didSet{
//            self.layer.borderWidth = BorderSize
//        }
//    }
    
    
    
    
   
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //Border size and color
        layer.borderWidth = 3/UIScreen.main.nativeScale
        layer.borderColor = ButtonColor.cgColor
        
        
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
