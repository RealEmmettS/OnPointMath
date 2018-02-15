//
//  CompoundInterest.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 1/13/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class CompoundInterestPage: UIViewController, UITextViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    //input

    //button

    //output
    
    
    
    @IBAction func submit2(_ sender: Any) {
        
        let r = Float(rate2.text!);
        let t = Float(time2.text!);
        let re = r!/100
        
        
        
        if let p = Float(principle2.text!){
            interest.text = "Your intrest is $\(p*re*t!)"
            accountbal.text = "Your account bal is $\((p*re*t!)+p)"
        }else{
            interest.text = "That's not a valid number"
            accountbal.text = ""
        }
    }
    //Hide keyboard when touch outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

