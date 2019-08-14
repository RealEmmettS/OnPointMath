//
//  ResultsAndCalcPage.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 7/24/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import UIKit
import Foundation

class ResultsAndCalcPage: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        text1.delegate = self
        text2.delegate = self
        text3.delegate = self
        text4.delegate = self
        text5.delegate = self
        answer_label.text = "Answer Will Appear Here"
        if selectedCalcID == nil{
            selectedCalcID = 0
        }
        
        if selectedCalcID == nil || selectedCalcName == nil{
            performSegue(withIdentifier: "sendBack", sender: self)
        } else {
            notUsedTextFields(first: 0, second: 0, third: 0, fourth: 0, fifth: 0)
            setupCalculation(itemID: selectedCalcID, itemName: selectedCalcName)
            calcLabel.text = selectedCalcName
            print("\(selectedCalcName) - \(selectedCalcID)")
        }
    }
    
    @IBOutlet weak var calcLabel: UILabel!
    @IBOutlet weak var answer_label: UILabel! //answer_label and answer are the same thing
    @IBOutlet weak var answer: UILabel!
    
   
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var text5: UITextField!
    
    
    func notUsedTextFields(first: Int, second: Int, third: Int, fourth: Int, fifth: Int){
        if first == 1{
            text1.text = "DO NOT FILL IN"
            text1.isEnabled = true
            text1.isHidden = true
        }
        if second == 1{
            text2.text = "DO NOT FILL IN"
            text2.isEnabled = true
            text2.isHidden = true
        }
        if third == 1{
            text3.text = "DO NOT FILL IN"
            text3.isEnabled = true
            text3.isHidden = true
        }
        if fourth == 1{
            text4.text = "DO NOT FILL IN"
            text4.isEnabled = true
            text4.isHidden = true
        }
        if fifth == 1{
            text5.text = "DO NOT FILL IN"
            text5.isEnabled = true
            text5.isHidden = true
        }
    }
    
    
    
    
    // MARK: - Editing
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == text1 {
            setupCalculation(itemID: selectedCalcID, itemName: selectedCalcName)
            print("Done Editing")
        } else if textField == text2 {
           setupCalculation(itemID: selectedCalcID, itemName: selectedCalcName)
            print("Done Editing")
        }else if textField == text3{
            setupCalculation(itemID: selectedCalcID, itemName: selectedCalcName)
            print("Done Editing")
        }else if textField == text4{
            setupCalculation(itemID: selectedCalcID, itemName: selectedCalcName)
            print("Done Editing")
        }else if textField == text5{
            setupCalculation(itemID: selectedCalcID, itemName: selectedCalcName)
            print("Done Editing")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func copyToClipboard(_ sender: Any) {
        UIPasteboard.general.string = answer.text
    }
    
    
    
    
    
    
    
    
    
    
    
    
    //This sets up the calculations based off of item ID's
    func setupCalculation(itemID: Double, itemName: String){
        //Investments - 1
        if itemID == 1.01 || itemName == "Simple Interest"{
            simpleInterest()
        }else if itemID == 1.02 || itemName == "Compound Interest"{
            compoundInterest()
        }else if itemID == 1.03 || itemName == "Car Loan"{
            carLoan()
        }
        
        //Geometry Area - 2
        if itemID == 2.01{
            triangle()
        } else if itemID == 2.02{
            rectangle()
        }else if itemID == 2.03{
            parallelogram()
        }else if itemID == 2.04{
            circle()
        }
        
        //Geometry Volume = 2.1
        if itemID == 2.11{
            cubev()
        }else if itemID == 2.12{
            conev()
        }else if itemID == 2.13{
            cylinderv()
        }else if itemID == 2.14{
            spherev()
        }
        
        //Geometry Surface Area - 2.2
        if itemID == 2.21{
            cubesa()
        }else if itemID == 2.22{
            rectanglesa()
        }else if itemID == 2.23{
            cylindersa()
        }else if itemID == 2.24{
            trianglesa()
        }
        
        //Geometry Lateral Surface Area - 2.3
        if itemID == 2.31{
            rectanglelsa()
        }else if itemID == 2.32{
            cylinderlsa()
        }
        
        //Anvanced Pythag - 3
        if itemID == 3.01{
            hypot()
        }else if itemID == 3.02{
            leg()
        }
        
        //Advanced Physics - 3.1
        if itemID == 3.11{
            speed()
        }else if itemID == 3.12{
            accel()
        }
        
        //Advanced Conversions - 3.2
        if itemID == 3.21{
            fm()
        }else if itemID == 3.22{
            mf()
        }else if itemID == 3.23{
            mk()
        }else if itemID == 3.24{
            km()
        }else if itemID == 3.25{
            gl()
        }else if itemID == 3.26{
            lg()
        }else if itemID == 3.27{
            fd()
        }else if itemID == 3.28{
            ftin()
        }else if itemID == 3.29{
            inft()
        }else if itemID == 3.210{
            fc()
        }else if itemID == 3.211{
            cf()
        }
        
        //Advanced Other - 3.3
        if itemID == 3.31{
            sqroot()
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //p(), r(), and t() are part of the setup for Simple, Compound, and Car calculations
    func p() -> Float {
        var p = Float(text1.text!);
        if p == nil{
            p = 0
        }
        return p!
    }
    
    func r() -> Float {
        var r = Float(text2.text!);
        if r == nil{
            r = 0
        }
        return r!
    }
    
    func t() -> Float {
        var t = Float(text3.text!);
        if t == nil{
            t = 0
        }
        return t!
    }
    
    
    
    func simpleInterest(){
        //Simple Interest Calculator
        let r = self.r()
        let t = self.t()
        let p = self.p()
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1, fifth: 1)
        
        text1.placeholder = "Principle (Base Investment)"
        text2.placeholder = "Rate"
        text3.placeholder = "Time (In Years)"
        
        let re = r/100
        let interestans = p*re*t
        let accountbalans = interestans+p
        
        answer_label.text = "Interest About: $\(interestans)\nAccount Bal. About: $\(accountbalans)";
    }
    
    func compoundInterest(){
        let r = Double(self.r());
        let t = Double(self.t());
        let p = Double(self.p());
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1, fifth: 1)
        
        let re = r/100
        let accountBalanceprt1 = Double(1+re);
        let accountBalanceprt2 = pow(accountBalanceprt1, t);
        let accountBalanceprt3 = Double(p*accountBalanceprt2);
        let accountBalanceprt4 = round(accountBalanceprt3)
        
        answer_label.text = "Interest About: $\(accountBalanceprt4-p)\nAccount Bal. About: $\(accountBalanceprt4)";
    }
    
    func carLoan() {
        let r = Double(self.r());
        let t = Double(self.t());
        let p = Double(self.p());
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1, fifth: 1)
        
        let re = r/100
        
        
        //let allSteps =  p!*(r! / 12) / (1 - (1 + r!) / 12)-t!
        
        let step1 = re/12
        let step2 = step1*p
        let step3 = step1+1
        let step4 = pow(step3, t)
        let step5 = 1/step4
        let step6 = 1-step5
        let step7 = step2/step6
        
        let roundedStep7 = round(step7)
        //let roundedAllSteps = round(allSteps)
        
        
        answer_label.text = "Monthly Payments: \(roundedStep7)\n(No Down Payments)";
        
    }
    func triangle() {
        //Triangle
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
        
        text2.placeholder = "Height"
        text1.placeholder = "Base"
        
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
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Width"
        
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
        
       notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
        
        text1.placeholder = "Length"
        text2.placeholder = "Width"
        
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
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        
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
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1, fifth: 1)
        
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
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
        
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
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
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
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
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
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
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
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1, fifth: 1)
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
        
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
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
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1, fifth: 1)
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
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1, fifth: 1)
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
        
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
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
    
    func t1t2(){
        
      notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
    }
    
    func t1(){
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
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
        
        notUsedTextFields(first: 0, second: 0, third: 0, fourth: 1, fifth: 1)
        text1.placeholder = "Time (s)"
        text2.placeholder = "Initial Velocity"
        text3.placeholder = "Final Velocity"
        
        var vf = Float(text3.text!);
        var vi = Float(text2.text!);
        var t = Float(text1.text!);
        
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
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        text1.placeholder = "Feet"
        
        var f = Float(text1.text!);
        if f==nil {
            f = 0
        }
        answer.text = "Answer: \(f!/3.28)"
    }
    
    func mf() {
        //Meters to Feet
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        text1.placeholder = "Meters"
        
        var m = Float(text1.text!);
        if m==nil{
            m = 0
        }
        answer.text = "Answer: \(m!*3.28)"
    }
    
    func mk() {
        //Mile to Kilometer
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        
        text1.placeholder = "Miles"
        
        var mile = Float(text1.text!);
        if mile==nil {
            mile = 0
        }
        answer.text = "Answer: \(mile!*1.61)";
    }
    
    func km() {
        //Kilometer to Mile
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        
        text1.placeholder = "Kilometer"
        
        var kilom = Float(text1.text!);
        if kilom==nil {
            kilom = 0
        }
        answer.text = "Answer: \(kilom!*0.6214)";
    }
    
    func gl() {
        //Gallon to Liter
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        
        text1.placeholder = "Gallons"
        
        var gallon = Float(text1.text!);
        if gallon==nil {
            gallon = 0
        }
        answer.text = "Answer: \(gallon!*3.785412)";
    }
    
    func lg() {
        //Liter to Gallon
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        
        text1.placeholder = "Liters"
        
        var liter = Float(text1.text!);
        if liter==nil {
            liter = 0
        }
        answer.text = "Answer: \(liter!/3.785412)";
    }
    
    func fd() {
        //Fraction to Decimal
        
       
        notUsedTextFields(first: 0, second: 0, third: 1, fourth: 1, fifth: 1)
        text1.placeholder = "Numerator"
        text2.placeholder = "Denominator"
        
        var numerator = Float(text1.text!);
        var denomerator = Float(text2.text!);
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
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        text1.placeholder = "Number"
        
        var number = Double(text1.text!)
        if number == nil {
            number = 0
        }
        
        let answernumber = sqrt(number!)
        answer.text = "Answer: \(answernumber)";
    }
    func ftin() {
        //Feet to Inches
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        text1.placeholder = "Feet"
        
        var feet = Double(text1.text!)
        if feet == nil{
            feet = 0
        }
        
        
        
        let inches = feet!*12
        answer.text = "Answer: \(inches)"
    }
    func inft() {
        //Inches to Feet
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        text1.placeholder = "Inches"
        
        var inches = Double(text1.text!)
        if inches == nil{
            inches = 0
        }
        
        
        
        let feet = inches!/12
        answer.text = "Answer: \(feet)"
    }
    func fc() {
        //Fahrenheit to Celsius
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        text1.placeholder = "Fahrenheit"
        
        var frnheit = Double(text1.text!)
        if frnheit == nil{
            frnheit = 0
        }
        
        let celsius = (frnheit!-32)/1.8
        
        answer.text = "Answer: \(celsius)"
    }
    func cf() {
        //Celsius to Fahrenheit
        
        notUsedTextFields(first: 0, second: 1, third: 1, fourth: 1, fifth: 1)
        text1.placeholder = "Celsius"
        
        var celsius = Double(text1.text!)
        if celsius == nil{
            celsius = 0
        }
        
        let frnheit = (celsius!*1.8)+32
        answer.text = "Answer: \(frnheit)"
    }

   

}
