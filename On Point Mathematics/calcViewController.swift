//
//  calcViewController.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 4/13/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//

import UIKit

class calcViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if UnivCheckEasyModeState() == 1{
            performSegue(withIdentifier: "EasyMode", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UnivCheckEasyModeState() == 1{
            performSegue(withIdentifier: "EasyMode", sender: self)
        }
    }
    
    
    
    
    //MARK: Initialization Variables
    var numberOnScreen:Double = 0;
    var prevNumber:Double = 0;
    var performingMath = false;
    var operation = 0;
    
    
    @IBOutlet weak var label: UILabel!
    
    
    //MARK: Numbers
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            if sender.tag == 20{
                if label.text == "" || label.text == "x" || label.text == "÷" || label.text == "+" || label.text == "-"{
                    label.text = "0"
                    label.text = label.text! + String(".")
                    numberOnScreen = Double(label.text!)!
                    performingMath = false
                } else {
                    label.text = label.text! + String(".")
                    numberOnScreen = Double(label.text!)!
                    performingMath = false
                }
            }else if sender.tag != 20{
                label.text = String(sender.tag-1)
                numberOnScreen = Double(label.text!)!
                performingMath = false
            }
        } else {
            if sender.tag == 20{
                if label.text == ""{
                    label.text = "0"
                    label.text = label.text! + String(".")
                    numberOnScreen = Double(label.text!)!
                } else {
                    label.text = label.text! + String(".")
                    numberOnScreen = Double(label.text!)!
                }
            } else if sender.tag != 20{
                label.text = label.text! + String(sender.tag-1)
                numberOnScreen = Double(label.text!)!
            }
        }
    }
    
    
    //MARK: Operation Buttons
    @IBAction func Buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            if label.text == "" || label.text == "x" || label.text == "/" || label.text == "+" || label.text == "-"{
                let alert = UIAlertController(title: "Operation", message: "Please select only one operation at a time", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    self.label.text = ""
                    self.prevNumber = 0
                    self.numberOnScreen = 0
                    self.operation = 0
                    self.performingMath = false
                }))
                self.present(alert, animated: true)
                
            } else {
                prevNumber = Double(label.text!)!
            }

            
            if sender.tag == 12 {        //Divide
                label.text = "/";
            } else if sender.tag == 13 { //Multiply
                label.text = "x";
            } else if sender.tag == 14 { //Minus
                label.text = "-";
            } else if sender.tag == 15 { //Plus
                label.text = "+";
            }
            
            operation = sender.tag
            performingMath = true;
        }
        
        if sender.tag == 16{
            if operation == 12 {
                label.text = String(prevNumber / numberOnScreen)
            }else if operation == 13 {
                label.text = String(prevNumber * numberOnScreen)
            }else if operation == 14 {
                label.text = String(prevNumber - numberOnScreen)
            }else if operation == 15 {
                label.text = String(prevNumber + numberOnScreen)
            }
        }
        
        
        //MARK: Reset
        if sender.tag == 11 {
            label.text = ""
            prevNumber = 0
            numberOnScreen = 0
            operation = 0
            performingMath = false
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
