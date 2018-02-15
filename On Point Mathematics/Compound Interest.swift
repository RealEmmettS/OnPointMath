//
//  CompoundInterestPage.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 1/13/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class CompoundInterestPage: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //input
    @IBOutlet weak var principle2: UITextField!
    @IBOutlet weak var rate2: UITextField!
    @IBOutlet weak var time2: UITextField!
    
    //button
    @IBOutlet weak var submit2: UIButton!
    
    //output
    @IBOutlet weak var interest2: UILabel!
    @IBOutlet weak var accountbal2: UILabel!
    

    @IBAction func submit2(_ sender: Any) {
        let r = Double(rate2.text!);
        let t = Double(time2.text!);
        let p = Double(principle2.text!);
        let re = r!/100
  
        
        let accountBalanceprt1 = Double(1+re);
        let accountBalanceprt2 = pow(accountBalanceprt1, t!);
        let accountBalanceprt3 = Double(p!*accountBalanceprt2);
        let accountBalanceprt4 = round(accountBalanceprt3)
        
        
        
        
        if let p = Double(principle2.text!){
            interest2.text = "Your intrest is about:\n $\(accountBalanceprt4-p)"
            accountbal2.text = "Your account bal is about:\n $\(accountBalanceprt4)"
        }else{
            interest2.text = "That's not a valid number"
            accountbal2.text = ""
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
