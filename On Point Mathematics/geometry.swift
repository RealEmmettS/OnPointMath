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
    let options = ["--Area--","Triangle","Rectangle","Parallelogram","Trapazoid","Circle","--Volume--","Prism","Pyramid","--Surface Area--","Cube","Rectangular Prism","Cylinder"];
    
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
            var l = Float(text1.text!);
            
            if l == nil{
                l = 0
            }
            
            let ll = pow(l!, 2)
            
            let SA = 6*ll
            answer_label.text = "Answer About: \(SA)"
            
        }else if row == 11 {
            //Rec. Prism
            var l = Float(text1.text!);
            var h = Float(text2.text!);
            var w = Float(text3.text!);
            
            if l == nil{
                l=0
            }
            if h == nil{
                h=0
            }
            if w == nil{
                w=0
            }
            
            
            let SApt1 = 2*l!*w!
            let SApt2 = 2*h!*w!
            let SApt3 = 2*l!*h!
            let SA = SApt1+SApt2+SApt3
            
            answer_label.text = "Answer About: \(SA)"

        }else if row == 12 {
            //Cylinder
            var r = Float(radius.text!);
            var h = Float(text2.text!);
            
            if r == nil{
                r = 0
                
            }
            if h == nil{
                h = 0
            }
            
            let SACpt1 = pow(r!, 2);
            let SACpt2 = 2*3.14*SACpt1;
            let SACpt3 = 2*3.14*r!*h!;
            let SAC = SACpt2+SACpt3
            
            
            answer_label.text = "Answer About: \(SAC)"
            
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
