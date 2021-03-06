//
//  geometry.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 1/18/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class geometry: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    
    // On Point Tech color example: text1.backgroundColor = UIColor(red:0.00, green:0.58, blue:1.00, alpha:1.0)
    //Picker
    @IBOutlet weak var picker: UIPickerView!
    //Input
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var radius: UITextField!
    //Outlets
    @IBOutlet weak var answer_label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        picker.delegate = self
        text1.delegate = self
        text2.delegate = self
        text3.delegate = self
        radius.delegate = self
        
        ResetFields()
        
        if UnivCheckEasyModeState() == 1{
            performSegue(withIdentifier: "EasyMode", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        if UnivCheckEasyModeState() == 1{
//            performSegue(withIdentifier: "EasyMode", sender: self)
//        }
    }
    
    
    
    func notUsedTextFields(first: Int, second: Int, third: Int, fourth: Int){
        if first == 1{
            text1.isEnabled = true
            text1.isHidden = true
            print("Hide 1")
        } else if first == 0{
            text1.isEnabled = true
            text1.isHidden = false
            print("Show 1")
        }
        
        if second == 1{
            text2.isEnabled = true
            text2.isHidden = true
            print("Hide 2")
       }else if second == 0{
            text2.isEnabled = true
            text2.isHidden = false
            print("Show 2")
        }
        
        if third == 1{
            text3.isEnabled = true
            text3.isHidden = true
            print("Hide 3")
        } else if third == 0{
            text3.isEnabled = true
            text3.isHidden = false
            print("Show 3")
        }
        
        if fourth == 1{
            radius.isEnabled = true
            radius.isHidden = true
            print("Hide 4")
        }else if fourth == 0{
            radius.isEnabled = true
            radius.isHidden = false
            print("Show 4")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //Picker Options
    let options = ["--Area--","Triangle","Rectangle","Parallelogram","Circle","--Volume--","Cube","Cone","Cylinder","Sphere","--Surface Area--","Cube","Rectangular Prism","Cylinder","Triangular Prism","--Lateral Surface Area--","Rectangular Prism","Cylinder"];
    
    //Hide keyboard when touch outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    
    
    
    // MARK: - selectCalc
    func selectCalculation(fromRow selectedRow: Int){
        if self.canCalculate() {
            // All rows except for 0,5,10,15 which are section titles
            if selectedRow == 1 {
                self.triangle()
            } else if selectedRow == 2 {
                self.rectangle()
            } else if selectedRow == 3 {
                self.parallelogram()
            } else if selectedRow == 4 {
                self.circle()
            } else if selectedRow == 6 {
                self.cubev()
            } else if selectedRow == 7 {
                self.conev()
            } else if selectedRow == 8 {
                self.cylinderv()
            } else if selectedRow == 9 {
                self.spherev()
            } else if selectedRow == 11 {
                self.cubesa()
            } else if selectedRow == 12 {
                self.rectanglesa()
            } else if selectedRow == 13 {
                self.cylindersa()
            } else if selectedRow == 14 {
                self.trianglesa()
            } else if selectedRow == 16 {
                self.rectanglelsa()
            } else if selectedRow == 17 {
               self.cylinderlsa()
            }
        }
    }
    
    // MARK: - Editing
    func textFieldDidEndEditing(_ textField: UITextField) {
        let selectedRow = self.picker.selectedRow(inComponent: 0)
        if textField == text1 {
            print("Text1 Ended")
            self.selectCalculation(fromRow: selectedRow)
        } else if textField == text2 {
            print("Text2 Ended")
            self.selectCalculation(fromRow: selectedRow)
        }else if textField == text3{
            print("Text3 Ended")
            self.selectCalculation(fromRow: selectedRow)
        }else if textField == radius{
            print("Radius Ended")
            self.selectCalculation(fromRow: selectedRow)
        }
    }
    // MARK: canCalculate
    func canCalculate() -> Bool {
        var isFilledIn = false
        if text1.text != nil && text2.text != nil && text3.text != nil && radius.text != nil {
            isFilledIn = true
        } else {
            print("isFilledIn = false")
        }
        
        return isFilledIn
    }
    
    
    
    
    
    
    
    
    
    
    
    
    //CODE HERE
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
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
            //Area
            ResetFields()
        }else if row == 1 {
            triangle()
        }else if row == 2 {
            rectangle()
        }else if row == 3 {
            parallelogram()
        } else if row == 4 {
            circle()
        }else if row == 5 {
            //Volume
            ResetFields()
        }else if row == 6 {
            cubev()
        }else if row == 7 {
           conev()
        }else if row == 8 {
            cylinderv()
        }else if row == 9 {
            spherev()
        }else if row == 10 {
            //Surface Area
            ResetFields()
        }else if row == 11 {
            cubesa()
        }else if row == 12 {
            rectanglesa()
        }else if row == 13 {
            cylindersa()
        }else if row == 14 {
            trianglesa()
        }else if row == 15 {
            //Lateral Surface Area
            ResetFields()
        }else if row == 16 {
            rectanglelsa()
        }else if row == 17 {
            cylinderlsa()
        }
    }
    
    
    
    func triangle() {
        //Triangle
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.darkGray
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1)
        
        text1.placeholder = "Base"
        text2.placeholder = "Height"
        
        var b = Float(text1.text!);
        var h = Float(text2.text!);
        if b == nil{
            b = 0
        }
        if h == nil{
            h = 0
        }
        answer_label.text = "Answer: \(0.5*b!*h!)"
    }
    
    func rectangle() {
        //Rectangle
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.white
//        radius.backgroundColor = UIColor.darkGray
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Height"
        
        var l = Float(text1.text!);
        var w = Float(text2.text!);
        if l == nil{
            l = 0
        }
        if w == nil{
            w = 0
        }
        answer_label.text = "Answer: \(l!*w!)"
    }
    
    func parallelogram() {
        //Parallelogram
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.darkGray
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Height"
        
        var l = Float(text1.text!);
        var h = Float(text2.text!);
        if l == nil{
            l = 0
        }
        if h == nil{
            h = 0
        }
        answer_label.text = "Answer: \(l!*h!)"
    }
    
    func circle() {
        //Circle
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.white
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1)
        
        text1.placeholder = "Radius"
        
        var r = Float(text1.text!);
        if r == nil{
            r = 0
        }
        let re = pow(r!, 2)
        answer_label.text = "Answer About: \(3.14159265359*re)"
    }
    
    func cubev() {
        //Cube
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.white
//        radius.backgroundColor = UIColor.darkGray
        
       notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Height"
        text3.placeholder = "Width"
        
        var l = Float(text1.text!);
        var h = Float(text2.text!);
        var w = Float(text3.text!);
        if l == nil{
            l = 0
        }
        if h == nil{
            h = 0
        }
        if w == nil{
            w = 0
        }
        
        let B = l!*w!
        answer_label.text = "Answer: \(B*h!)"
    }
    
    func conev() {
        //Cone
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.white
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1)
        
        text1.placeholder = "Height"
        text2.placeholder = "Radius"
        
        var h = Float(text1.text!);
        var r = Float(text2.text!);
        if h == nil{
            h = 0
        }
        if r == nil{
            r = 0
        }
        let re = pow(r!, 2)
        let B =  3.14159265359*re
        answer_label.text = "Answer About: \((1/3)*B*h!)"
    }
    
    func cylinderv() {
        //Cylinder
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.white
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1)
        
        text1.placeholder = "Height"
        text2.placeholder = "Radius"
        
        var h = Float(text1.text!);
        var r = Float(text2.text!);
        if h == nil{
            h = 0
        }
        if r == nil{
            r = 0
        }
        
        let re = pow(r!, 2)
        let B = 3.14159265359*re
        answer_label.text = "Answer About: \(B*h!)"
    }
    
    func spherev() {
        //Sphere
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.white
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1)
        
        text1.placeholder = "Radius"
        
        var r = Float(text1.text!);
        if r == nil{
            r = 0
        }
        
        let rCubed = pow(r!, 3)
        let piRCubed = 3.14159265359*rCubed
        answer_label.text = "Answer About: \((4/3)*piRCubed)"
    }
    
    func cubesa() {
        //Cube
        // Formula: S=P*h+2*B3
        
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.darkGray
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Height"
        
        var l = Float(text1.text!);
        var h = Float(text2.text!);
        
        if l == nil{
            l = 0
        }
        if h == nil{
            h = 0
        }
        
        let B = l!*l!
        
        let prt1 = l!+l!+l!+l!
        let prt2 = prt1*h!
        let prt3 = 2*B
        let prt4 = prt2+prt3
        
        let SA = prt4
        
        answer_label.text = "Answer About: \(SA)"
        

    }
    
    func rectanglesa() {
        //Rec. Prism
        // Formula: S=P*h+2*B
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.white
//        radius.backgroundColor = UIColor.darkGray
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Height"
        text3.placeholder = "Width"
        
        var l = Float(text1.text!);
        var h = Float(text2.text!);
        var w = Float(text3.text!);
        
        if l == nil{
            l = 0
        }
        if h == nil{
            h = 0
        }
        if w == nil{
            w = 0
        }
        
        let B = l!*w!
        
        let prt1 = l!+l!+w!+w!
        let prt2 = prt1*h!
        let prt3 = 2*B
        let prt4 = prt2+prt3
        
        let SA = prt4
        
        answer_label.text = "Answer About: \(SA)"
    }
    
    func cylindersa() {
        //Cylinder
        // Formula: S= (2*pi*r)*h+(2*pi*(pow, r))
        
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.white
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1)
        
        text1.placeholder = "Radius"
        text2.placeholder = "Height"
        
        var r = Double(text1.text!);
        var h = Double(text2.text!);
        
        if r == nil{
            r = 0
            
        }
        if h == nil{
            h = 0
        }
        
        // 2*pi*r
        let prt1 = 2*3.14159265359*r!;
        
        // 2*pi*(pow, r)
        let prt2 = 2*3.14159265359*pow(r!, 2)
        
        // (prt1*h)+prt2
        let SA = (prt1*h!)+prt2
        
        
        answer_label.text = "Answer About: \(SA)"

    }
    
    func trianglesa() {
        //Triangular Prism
        // Formula: P*h+2B
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.white
//        radius.backgroundColor = UIColor.darkGray
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Height"
        text3.placeholder = "Width"
        
        
        var l = Float(text1.text!);
        var h = Float(text2.text!);
        var w = Float(text3.text!);
        
        if l == nil{
            l = 0
        }
        if h == nil{
            h = 0
        }
        if w == nil{
            w = 0
        }
        
        let B = (1/2)*l!*w!
        
        let prt1 = l!+l!+w!+w!
        let prt2 = prt1*h!
        let prt3 = 2*B
        let prt4 = prt2+prt3
        
        let SA = prt4
        
        answer_label.text = "Answer About: \(SA)"
    }
    
    func rectanglelsa() {
        //Rec. Prism
        // Formula: S=Ph+2B
        
//        text1.backgroundColor = UIColor.white
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.white
//        radius.backgroundColor = UIColor.darkGray
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Height"
        text3.placeholder = "Width"
        
        var l = Float(text1.text!);
        var w = Float(text3.text!);
        var h = Float(text2.text!);
        
        if l == nil{
            l = 0
        }
        if w == nil{
            w = 0
        }
        if h == nil{
            h = 0
        }
        
        //Find Perimeter of Base
        let prt1 = l!+l!+w!+w!
        let prt2 = prt1*h!
        
        let LSA = prt2
        
        answer_label.text = "Answer About: \(LSA)"
    }
    
    func cylinderlsa() {
        //Cylinder
        // Formula: S=Ph+2B
        
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.white
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.white
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1)
        
        text1.placeholder = "Radius"
        text2.placeholder = "Height"
        
        var r = Float(text1.text!);
        var h = Float(text2.text!);
        
        if r == nil{
            r = 0
        }
        if h == nil{
            h = 0
        }
        
        //Circumfrence
        let prt1 = 2*3.14*r!
        let prt2 = prt1*h!
        
        let LSA = prt2
        
        answer_label.text = "Answer About: \(LSA)"
    }
    
    func ResetFields() {
//        text1.backgroundColor = UIColor.darkGray
//        text2.backgroundColor = UIColor.darkGray
//        text3.backgroundColor = UIColor.darkGray
//        radius.backgroundColor = UIColor.darkGray
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 0)
        
        text1.text = ""
        text1.placeholder = "Input Will Go Here"
        text2.text = ""
        text2.placeholder = "Input Will Go Here"
        text3.text = ""
        text3.placeholder = "Input Will Go Here"
        radius.text = ""
        radius.placeholder = "Input Will Go Here"
        
        answer_label.text = "Please Select a\nCalculation"
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
