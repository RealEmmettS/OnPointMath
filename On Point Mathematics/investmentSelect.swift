//
//  investmentSelect.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 1/13/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class investmentSelect: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    //Picker View
    @IBOutlet weak var picker: UIPickerView!
    
    //inputs
    @IBOutlet weak var principle: UITextField!
    @IBOutlet weak var rate: UITextField!
    @IBOutlet weak var time: UITextField!
    
    //output
    @IBOutlet weak var interest: UILabel!
    @IBOutlet weak var accountbal: UILabel!

    
    
    //Picker Options
    let options = ["--Select Interest Type--","Simple Interest","Compound Interest"]
    
    //Hide keyboard when touch outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    
    
    
    
    
    
    
    //CODE HERE
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return options.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options[row]
    }
    

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            accountbal.text = "Select Calculation Type"
            interest.text = ""
        }else if row == 1 {
            //Simple Interest Calculator
            var r = Float(rate.text!);
            var t = Float(time.text!);
            var p = Float(principle.text!);
            if r == nil{
                r = 0
            }
            if t == nil{
                t = 0
            }
            if p == nil{
                p = 0
            }
            let re = r!/100
            
            let interestans = p!*re*t!
            let accountbalans = interestans+p!
            
            interest.text = "Your intrest is about:\n $\(interestans)";
            accountbal.text = "Your account bal is about:\n $\(accountbalans)";
                    
        
        }else if row == 2 {
            //code here
            var r = Double(rate.text!);
            if r == nil{
                r = 0
            }
            var t = Double(time.text!);
            if t == nil{
                t = 0
            }
            var p = Double(principle.text!);
            if p == nil{
                p = 0
            }
            let re = r!/100
            let accountBalanceprt1 = Double(1+re);
            let accountBalanceprt2 = pow(accountBalanceprt1, t!);
            let accountBalanceprt3 = Double(p!*accountBalanceprt2);
            let accountBalanceprt4 = round(accountBalanceprt3)
            
            interest.text = "Your intrest is about:\n $\(accountBalanceprt4-p!)";
            accountbal.text = "Your account bal is about:\n $\(accountBalanceprt4)";
    
            }
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
