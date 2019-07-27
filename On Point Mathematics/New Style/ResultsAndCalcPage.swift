//
//  ResultsAndCalcPage.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 7/24/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import UIKit

class ResultsAndCalcPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        answer_label.text = "Answer Will Appear Here"
        calcLabel.text = selectedCalcName
        
        print("\(selectedCalcName) - \(selectedCalcID)")
    }
    
    @IBOutlet weak var calcLabel: UILabel!
    @IBOutlet weak var answer_label: UILabel! //answer_label and answer are the same thing
    @IBOutlet weak var answer: UILabel!
    
   
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var radius: UITextField! //radius and text4 are the same thing
    @IBOutlet weak var denom: UITextField!
    @IBOutlet weak var text4: UITextField!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func triangle() {
        //Triangle
        //        text1.backgroundColor = UIColor.white
        //        text2.backgroundColor = UIColor.white
        //        text3.backgroundColor = UIColor.darkGray
        //        radius.backgroundColor = UIColor.darkGray
        
        
        text1.text = ""
        text2.text = ""
        text3.text = "DO NOT FILL IN"
        radius.text = "DO NOT FILL IN"
        
        text2.placeholder = "Base"
        
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
        
        text1.text = ""
        text2.text = "DO NOT FILL IN"
        text3.text = ""
        radius.text = "DO NOT FILL IN"
        
        text3.placeholder = "Width"
        
        var l = Float(text1.text!);
        var w = Float(text3.text!);
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
        
        text1.text = ""
        text2.text = ""
        text3.text = "DO NOT FILL IN"
        radius.text = "DO NOT FILL IN"
        
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
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        radius.text = ""
        
        radius.placeholder = "Radius"
        
        var r = Float(radius.text!);
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
        
        text1.text = ""
        text2.text = ""
        text3.text = ""
        radius.text = "DO NOT FILL IN"
        
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
        
        text1.text = "DO NOT FILL IN"
        text2.text = ""
        text3.text = "DO NOT FILL IN"
        radius.text = ""
        
        radius.placeholder = "Radius"
        
        var h = Float(text2.text!);
        var r = Float(radius.text!);
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
        
        text1.text = "DO NOT FILL IN"
        text2.text = ""
        text3.text = "DO NOT FILL IN"
        radius.text = ""
        
        radius.placeholder = "Radius"
        
        var h = Float(text2.text!);
        var r = Float(radius.text!);
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
        
        text1.text = "DO NOT FILL IN"
        text2.text = "DO NOT FILL IN"
        text3.text = "DO NOT FILL IN"
        radius.text = ""
        
        radius.placeholder = "Radius"
        
        var r = Float(radius.text!);
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
        
        text1.text = ""
        text2.text = ""
        text3.text = "DO NOT FILL IN"
        radius.text = "DO NOT FILL IN"
        
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
        
        text1.text = ""
        text2.text = ""
        text3.text = ""
        radius.text = "DO NOT FILL IN"
        
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
        
        text1.text = "DO NOT FILL IN"
        text2.text = ""
        text3.text = "DO NOT FILL IN"
        radius.text = ""
        
        radius.placeholder = "Radius"
        
        var r = Double(radius.text!);
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
        
        text1.text = ""
        text2.text = ""
        text3.text = ""
        radius.text = "DO NOT FILL IN"
        
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
        
        text1.text = ""
        text2.text = ""
        text3.text = ""
        radius.text = "DO NOT FILL IN"
        
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
        
        text1.text = "DO NOT FILL IN"
        text2.text = ""
        text3.text = "DO NOT FILL IN"
        radius.text = ""
        
        radius.placeholder = "Radius"
        
        var r = Float(radius.text!);
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
        
        text1.text = ""
        text2.text = ""
        text3.text = ""
        radius.text = ""
        
        answer_label.text = "Please Select a\nCalculation"
    }
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

   

}
