//
//  ViewController.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 1/11/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class SimpleInterestPage: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    //input
    @IBOutlet weak var principle: UITextField!
    @IBOutlet weak var rate: UITextField!
    @IBOutlet weak var time: UITextField!
    //button
    @IBOutlet weak var submit1: RoundedButton!
    //output
   
    @IBOutlet weak var interest: UILabel!
    @IBOutlet weak var accountbal: UILabel!
    
    @IBAction func submit1(_ sender: Any) {
        
        let r = Float(rate.text!);
        let t = Float(time.text!);        
        let re = r!/100
        
        
        
        if let p = Float(principle.text!){
            interest.text = "Your intrest is:\n $\(p*re*t!)"
            accountbal.text = "Your account bal is:\n $\((p*re*t!)+p)"
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

