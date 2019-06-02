//
//  AdvancedCalc.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 2/1/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class AdvancedCalc: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        Picker.dataSource = self
        Picker.delegate = self
        text1.delegate = self
        text2.delegate = self
        text3.delegate = self
        denom.delegate = self
        text4.delegate = self

        // Do any additional setup after loading the view.
    }
    //Picker View
    @IBOutlet weak var Picker: UIPickerView!
    
    //inputs
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var denom: UITextField!
    @IBOutlet weak var text4: UITextField!
    
    //output
    @IBOutlet weak var answer: UILabel!
   
    //Picker Options
    let options = ["--Pythagorean Theorum--","Hypotenuse","Leg","--Physics--","Speed","Acceleration","--Conversions--","Feet to Meters","Meters to Feet","Mile to Kilometer","Kilometer to Mile","Gallon to Liter","Liter to Gallon","Fraction to Decimal", "Feet to Inches", "Inches to Feet", "Fahrenheit to Celsius", "Celsius to Fahrenheit","--Other--","Square Root"]
    
    //Hide keyboard when touch outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    // MARK: - selectCalc
    func selectCalculation(fromRow selectedRow: Int){
        if self.canCalculate() {
            // All rows except for 0,3,6,18 which are section titles
            if selectedRow == 1 {
                self.hypot()
            } else if selectedRow == 2 {
                self.leg()
            } else if selectedRow == 4 {
                self.speed()
            } else if selectedRow == 5 {
                self.accel()
            } else if selectedRow == 7 {
                self.fm()
            } else if selectedRow == 8 {
                self.mf()
            } else if selectedRow == 9 {
                self.mk()
            } else if selectedRow == 10 {
                self.km()
            } else if selectedRow == 11 {
                self.gl()
            } else if selectedRow == 12 {
                self.lg()
            } else if selectedRow == 13 {
                self.fd()
            } else if selectedRow == 14 {
                self.ftin()
            }else if selectedRow == 15{
                self.inft()
            }else if selectedRow == 16 {
                self.fc()
            }else if selectedRow == 17 {
                self.cf()
            }else if selectedRow == 19 {
                self.sqroot()
            }
        }
    }
    
    // MARK: - Editing
    func textFieldDidEndEditing(_ textField: UITextField) {
        let selectedRow = self.Picker.selectedRow(inComponent: 0)
        if textField == text1 {
            print("Text1 Ended")
            self.selectCalculation(fromRow: selectedRow)
        } else if textField == text2 {
            print("Text2 Ended")
            self.selectCalculation(fromRow: selectedRow)
        }else if textField == text3{
            print("Text3 Ended")
            self.selectCalculation(fromRow: selectedRow)
        }else if textField == denom{
            print("Denom Ended")
            self.selectCalculation(fromRow: selectedRow)
        }else if textField == text4{
            print("Text4 Ended")
            self.selectCalculation(fromRow: selectedRow)
        }
    }
    // MARK: canCalculate
    func canCalculate() -> Bool {
        var isFilledIn = false
        if text1.text != nil && text2.text != nil && text3.text != nil && denom.text != nil && text4.text != nil {
            isFilledIn = true
        } else {
            print("isFilledIn = false")
        }
        
        return isFilledIn
    }
    
    
    
    //CODE HERE
    //MARK: Picker View
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
            answer.text = "Answer Shows Up\nHere"
            ResetFields()
        }else if row == 1 {
            hypot()
        }else if row == 2{
            leg()
        }else if row == 3 {
            answer.text = "Answer Shows Up\nHere"
            ResetFields()
        }else if row == 4 {
            speed()
        }else if row == 5 {
            accel()
        }else if row == 6 {
            answer.text = "Answer Shows Up\nHere"
            ResetFields()
        }else if row == 7 {
            fm()
        }else if row == 8 {
            mf()
        }else if row == 9 {
            mk()
        }else if row == 10 {
            km()
        }else if row == 11 {
            gl()
        }else if row == 12 {
            lg()
        }else if row == 13 {
            fd()
        }else if row == 14 {
            ftin()
        }else if row == 15 {
            inft()
        }else if row == 16{
            fc()
        }else if row == 17{
            cf()
        }else if row == 18{
            answer.text = "Answer Shows Up\nHere"
            ResetFields()
        }else if row == 19{
            sqroot()
        }
    }



    //MARK: Functions
    func ResetFields() {
        text1.backgroundColor = UIColor.white
        text2.backgroundColor = UIColor.white
        text3.backgroundColor = UIColor.white
        denom.backgroundColor = UIColor.white
        text4.backgroundColor = UIColor.white
        
        text1.text = ""
        text2.text = ""
        text3.text = ""
        denom.text = ""
        text4.text = ""
        
        answer.text = "Please Select a\nCalculation"
    }
    
    //Shading Presets
    func t1t2(){
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.darkGray
        
        text1.text = ""
        text2.text = ""
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = "DO NOT FILL IN"
    }
    
    func t4(){
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = ""
    }
    
    
    
    
    
    //Calculations
    func hypot() {
        //Pythagorean Theorum
        t1t2()
        
        text1.placeholder  = "Leg 1"
        text2.placeholder = "Leg 2"
        
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
    }
    
    func leg() {
        //Pythagorean Theroum
        t1t2()
        
        text1.placeholder = "Leg 1"
        text2.placeholder = "Hypotenuse"
        
        var l1 = Float(text1.text!);
        var hy = Float(text2.text!);
        
        if l1 == nil{
            l1 = 0
        }
        if hy == nil{
            hy = 0
        }
        
        let legpt1 = pow(l1!, 2)
        let legpt2 = pow(hy!, 2)
        let leg = sqrt(legpt1-legpt2)
        
        answer.text = "Leg Length = \(leg)"
        
    }
    
    func speed() {
        //Speed
        t1t2()
        
        text1.placeholder = "Distance (m)"
        text2.placeholder = "Time (s)"
        
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
        
    }
    
    func accel() {
        //Acceleration
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.white
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = ""
        text3.text = ""
        denom.text = "DO NOT FILL IN"
        text4.text = ""
        
        text2.placeholder = "Time (s)"
        text3.placeholder = "Initial Velocity"
        text4.placeholder = "Final Velocity"
        
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
        let acceleration = apt1/t!
        
        
        answer.text = "Answer About: \(acceleration)"
    }
    
    func fm() {
        //Feet to Meters
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = ""
        
        text4.placeholder = "Feet"
        
        var f = Float(text4.text!);
        if f==nil {
            f = 0
        }
        answer.text = "Answer: \(f!/3.28)"
    }
    
    func mf() {
        //Meters to Feet
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = ""
        
        text4.placeholder = "Meters"
        
        var m = Float(text4.text!);
        if m==nil{
            m = 0
        }
        answer.text = "Answer: \(m!*3.28)"
    }
    
    func mk() {
        //Mile to Kilometer
        t4()
        
        text4.placeholder = "Miles"
        
        var mile = Float(text4.text!);
        if mile==nil {
            mile = 0
        }
        answer.text = "Answer: \(mile!*1.61)";
    }
    
    func km() {
        //Kilometer to Mile
        t4()
        
        text4.placeholder = "Kilometer"
        
        var kilom = Float(text4.text!);
        if kilom==nil {
            kilom = 0
        }
        answer.text = "Answer: \(kilom!*0.6214)";
    }
    
    func gl() {
        //Gallon to Liter
        t4()
        
        text4.placeholder = "Gallons"
        
        var gallon = Float(text4.text!);
        if gallon==nil {
            gallon = 0
        }
        answer.text = "Answer: \(gallon!*3.785412)";
    }
    
    func lg() {
        //Liter to Gallon
        t4()
        
        text4.placeholder = "Liters"
        
        var liter = Float(text4.text!);
        if liter==nil {
            liter = 0
        }
        answer.text = "Answer: \(liter!/3.785412)";
    }
    
    func fd() {
        //Fraction to Decimal
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.white
//        denom.backgroundColor = UIColor.white
//        text4.backgroundColor = UIColor.darkGray
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = ""
        denom.text = ""
        text4.text = "DO NOT FILL IN"
        
        text3.placeholder = "Numerator"
        
        var numerator = Float(text3.text!);
        var denomerator = Float(denom.text!);
        if numerator==nil {
            numerator = 0
        }
        if denomerator==nil{
            denomerator = 0
        }
        answer.text = "Answer: \(numerator!/denomerator!)";
    }
    func sqroot() {
        //square root
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = ""
        
        text4.placeholder = "Number"
        
        var number = Double(text4.text!)
        if number == nil {
            number = 0
        }
        
        let answernumber = sqrt(number!)
        answer.text = "Answer: \(answernumber)";
    }
    func ftin() {
        //Feet to Inches
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = ""
        
        text4.placeholder = "Feet"
        
        var feet = Double(text4.text!)
        if feet == nil{
            feet = 0
        }
        
        
        
        let inches = feet!*12
        answer.text = "Answer: \(inches)"
    }
    func inft() {
        //Inches to Feet
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = ""
        
        text4.placeholder = "Inches"
        
        var inches = Double(text4.text!)
        if inches == nil{
            inches = 0
        }
        
        
        
        let feet = inches!/12
        answer.text = "Answer: \(feet)"
    }
    func fc() {
        //Fahrenheit to Celsius
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = ""
        
        text4.placeholder = "Fahrenheit"
        
        var frnheit = Double(text4.text!)
        if frnheit == nil{
            frnheit = 0
        }
        
        let celsius = (frnheit!-32)/1.8
        
        answer.text = "Answer: \(celsius)"
    }
    func cf() {
        //Celsius to Fahrenheit
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        denom.backgroundColor = UIColor.darkGray
//        text4.backgroundColor = UIColor.white
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        denom.text = "DO NOT FILL IN"
        text4.text = ""
        
        text4.placeholder = "Celsius"
        
        var celsius = Double(text4.text!)
        if celsius == nil{
            celsius = 0
        }
        
        let frnheit = (celsius!*1.8)+32
        answer.text = "Answer: \(frnheit)"
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
