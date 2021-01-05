//
//  SettingsPage.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 8/14/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import UIKit
import Foundation

var EasyModeEnabled = UserDefaults.standard.bool(forKey: "EasyMode")

class SettingsPage: UIViewController {

    @IBOutlet weak var EasyLabelSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CheckEasyModeState()
    }
    
    
    
    @IBAction func EasyLabelSwitch(_ sender: UISwitch) {
        if sender.isOn == true{
            UserDefaults.standard.set(true, forKey: "EasyMode")
            print("On")
        }else if sender.isOn == false{
            UserDefaults.standard.set(false, forKey: "EasyMode")
            print("Off")
        }
    }
    
    
    func CheckEasyModeState(){
        if UserDefaults.standard.bool(forKey: "EasyMode") == false || UserDefaults.standard.bool(forKey: "EasyMode") == nil{
            EasyLabelSwitch.isOn = false
        }else if UserDefaults.standard.bool(forKey: "EasyMode") == true{
            EasyLabelSwitch.isOn = true
        }
    }
    
    
    
  

}
