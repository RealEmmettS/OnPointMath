//
//  geometry.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 1/18/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class geometry: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

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
        

        // Do any additional setup after loading the view.
    }
    //Picker Options
    let options = ["--Area--","Triangle","Rectangle","Parallelogram","Trapazoid","Circle","--Volume--","Prism","Pyramid","--Surface Area--","Cube","Rectangular Prism","Cylinder","--Lateral Surface Area--","Rectangular Prism","Cylinder"];
    
    //Hide keyboard when touch outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
            answer_label.text = "Please Pick a Formula"
        }else if row == 1 {
            //Triangle
            var b = Float(text1.text!);
            var h = Float(text2.text!);
            if b == nil{
                b = 0
            }
            if h == nil{
                h = 0
            }
            answer_label.text = "Answer: \(0.5*b!*h!)"

        }else if row == 2 {
            //Rectangle
            var b = Float(text1.text!);
            var h = Float(text2.text!);
            if b == nil{
                b = 0
            }
            if h == nil{
                h = 0
            }
            answer_label.text = "Answer: \(b!*h!)"
        }else if row == 3 {
            //Parallelogram
            var b = Float(text1.text!);
            var h = Float(text2.text!);
            if b == nil{
                b = 0
            }
            if h == nil{
                h = 0
            }
            answer_label.text = "Answer: \(b!*h!)"
        }else if row == 4 {
            //Trapazoid
            var b = Float(text1.text!);
            var h = Float(text2.text!);
            var b2 = Float(text3.text!);
            if b == nil{
                b = 0
            }
            if h == nil{
                h = 0
            }
            if b2 == nil{
                b2 = b
            }
            answer_label.text = "Answer: \(0.5*(b!+b2!)*h!)"
        }else if row == 5 {
            //Circle
            var r = Float(radius.text!);
            if r == nil{
                r = 0
            }
            let re = pow(r!, 2)
            answer_label.text = "Answer About: \(3.14159265359*re)"
        }else if row == 6 {
            //Volume
            answer_label.text = "Please Pick a Formula"
        }else if row == 7 {
            //Prism
            var b = Float(text1.text!);
            var h = Float(text2.text!);
            if b == nil{
                b = 0
            }
            if h == nil{
                h = 0
            }
            let B =  pow(b!, 2)
            answer_label.text = "Answer: \(B*h!)"
        }else if row == 8 {
            //Pyramid
            var b = Float(text1.text!);
            var h = Float(text2.text!);
            if b == nil{
                b = 0
            }
            if h == nil{
                h = 0
            }
            let B =  pow(b!, 2)
            answer_label.text = "Answer About: \(0.33333333333*B*h!)"
        }else if row == 9 {
            //Surface Area
            answer_label.text = "Please Pick a Formula"
        }else if row == 10 {
            //Cube
            // Formula: S=Ph+2B
            var l = Float(text1.text!);
            var h = Float(text2.text!);
            var B = Float(text3.text!);
            
            if l == nil{
                l = 0
            }
            if h == nil{
                h = 0
            }
            if B == nil{
                B = 0
            }
            
            
            let prt1 = l!+l!+l!+l!
            let prt2 = prt1*h!
            let prt3 = 2*B!
            let prt4 = prt2+prt3
            
            let SA = prt4
            
            answer_label.text = "Answer About: \(SA)"
            
        }else if row == 11 {
            //Rec. Prism
            // Formula: S=Ph+2B
            var l = Float(text1.text!);
            var h = Float(text2.text!);
            var B = Float(text3.text!);
            
            if l == nil{
                l = 0
            }
            if h == nil{
                h = 0
            }
            if B == nil{
                B = 0
            }
            
            
            let prt1 = l!+l!+l!+l!
            let prt2 = prt1*h!
            let prt3 = 2*B!
            let prt4 = prt2+prt3
            
            let SA = prt4
            
            answer_label.text = "Answer About: \(SA)"
            

        }else if row == 12 {
            //Cylinder
            // Formula: S= (2*pi*r)*h+(2*pi*(pow, r))
            var r = Double(radius.text!);
            var h = Double(text2.text!);
            
            if r == nil{
                r = 0
                
            }
            if h == nil{
                h = 0
            }
            
           // 2*pi*r
           let prt1 = 2*3.14*r!;
            
           // 2*pi*(pow, r)
            let prt2 = pow(r!, 2)
            
            // (prt1*h)+prt2
            let SA = (prt1*h!)+prt2
            
            
            answer_label.text = "Answer About: \(SA)"
            
        }else if row == 13 {
            answer_label.text = "Please Pick a Formula"
            
        }else if row == 14 {
            //Rec. Prism
            // Formula: S=Ph+2B
            var l = Float(text1.text!);
            var h = Float(text2.text!);
            
            if l == nil{
                l = 0
            }
            if h == nil{
                h = 0
            }
            
            //Find Perimeter of Base
            let prt1 = l!+l!+l!+l!
            let prt2 = prt1*h!
            
            let LSA = prt2
            
            answer_label.text = "Answer About: \(LSA)"
            
        }else if row == 15 {
            //Cylinder
            // Formula: S=Ph+2B
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
