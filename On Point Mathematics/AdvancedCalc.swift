//
//  AdvancedCalc.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 2/1/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class AdvancedCalc: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        Picker.dataSource = self
        Picker.delegate = self

        // Do any additional setup after loading the view.
    }
    //Picker View
    @IBOutlet weak var Picker: UIPickerView!
    
    //inputs
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    
    //output
    @IBOutlet weak var answer: UILabel!
    
    
    //Picker Options
    let options = ["--Trigonometry--","Pythagorean Theorum","--Physics--","Speed","Acceleration","--Conversions--","Feet to Meters","Meters to Feet","Mile to Kilometer","Kilometer to Mile","Gallon to Liter","Liter to Gallon"]
    
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
            answer.text = "Please pick a formula"
        }else if row == 1 {
            //Pythagorean Theorum
            var l1 = Float(text1.text!);
            var l2 = Float(text2.text!);
            
            if l1 == nil{
                l1 = 0
            }
            if l2 == nil{
                l2 = 0
            }
            
            let hpt1 = pow(l1!, 2)
            let hpt2 = pow(l2!, 2)
            let h = sqrt(hpt1+hpt2)
            
            answer.text = "Hypotenuse Length = \(h)"

            
        }else if row == 2 {
            answer.text = "Please pick a formula"
        }else if row == 3 {
            //Speed
            var d = Float(text1.text!);
            var t = Float(text2.text!);
            
            if d == nil{
                d = 0
            }
            if t == nil{
                t = 0
            }
            
            let speed = d!/t!
            
            answer.text = "Answer About: \(speed)"
            
        }else if row == 4 {
            //Acceleration
            var vf = Float(text4.text!);
            var vi = Float(text3.text!);
            var t = Float(text2.text!);
            
            if vf == nil{
                vf = 0
            }
            if vi == nil{
                vi = 0
            }
            if t == nil{
                t = 0
            }
            
            let apt1 = vf!-vi!
            let a = apt1/t!
            
            
            answer.text = "Answer About: \(a)"
            
        }else if row == 5 {
            answer.text = "Please pick a formula"
        }else if row == 6 {
            //Feet to Meters
            var f = Float(text4.text!);
            if f==nil {
                f = 0
            }
            answer.text = "Answer: \(f!/3.28)"
        }else if row == 7 {
            //Meters to Feet
            var m = Float(text4.text!);
            if m==nil{
                m = 0
            }
            answer.text = "Answer: \(m!*3.28)"
        }else if row == 8 {
            //Mile to Kilometer
            var mile = Float(text4.text!);
            if mile==nil {
                mile = 0
            }
            answer.text = "Answer: \(mile!*1.61)";
        }else if row == 9 {
            //Kilometer to Mile
            var kilom = Float(text4.text!);
            if kilom==nil {
                kilom = 0
            }
            answer.text = "Answer: \(kilom!*0.6214)";
        }else if row == 10 {
            //Gallon to Liter
            var gallon = Float(text4.text!);
            if gallon==nil {
                gallon = 0
            }
            answer.text = "Answer: \(gallon!*3.785412)";
        }else if row == 11 {
            //Liter to Gallon
            var liter = Float(text4.text!);
            if liter==nil {
                liter = 0
            }
            answer.text = "Answer: \(liter!/3.785412)";
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
