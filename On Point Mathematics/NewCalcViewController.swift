//
//  NewCalcViewController.swift
//  On Point Mathematics
//
//  Created by Emmett Shaughnessy on 7/10/19.
//  Copyright © 2019 Emmett S. All rights reserved.
//

import UIKit

class NewCalcViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Calculator V2 Activated")
    }
    //Class Variables
    var firstNumber:Double!
    var secondNumber:Double!
    var equationOperator:String!
    var equationPressed:Bool = false
    
    //Import Buttons and Calc Output
    @IBOutlet weak var calcOutput: UILabel!
    
    @IBAction func button0(_ sender: Any) {
        addCharToCalc(number: 0, string: "")
    }
    
    @IBAction func button1(_ sender: Any) {
        addCharToCalc(number: 1, string: "")
    }
    
    @IBAction func button2(_ sender: Any) {
        addCharToCalc(number: 2, string: "")
    }
    
    @IBAction func button3(_ sender: Any) {
        addCharToCalc(number: 3, string: "")
    }
    
    @IBAction func button4(_ sender: Any) {
        addCharToCalc(number: 4, string: "")
    }
    
    @IBAction func button5(_ sender: Any) {
        addCharToCalc(number: 5, string: "")
    }
    
    @IBAction func button6(_ sender: Any) {
        addCharToCalc(number: 6, string: "")
    }
    
    @IBAction func button7(_ sender: Any) {
        addCharToCalc(number: 7, string: "")
    }
    
    @IBAction func button8(_ sender: Any) {
        addCharToCalc(number: 8, string: "")
    }
   
    @IBAction func button9(_ sender: Any) {
        addCharToCalc(number: 9, string: "")
    }
    
    @IBAction func buttonDot(_ sender: Any) {
        addCharToCalc(number: 99, string: ".")
    }
    
    @IBAction func buttonC(_ sender: Any) {
        calcOutput.text = "0"
        firstNumber = 0
        secondNumber = 0
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        operatorChecked(Operator: "+")
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        operatorChecked(Operator: "-")
    }
    
    @IBAction func buttonX(_ sender: Any) {
        operatorChecked(Operator: "x")
    }
    
    @IBAction func buttonDivide(_ sender: Any) {
        operatorChecked(Operator: "÷")
        //The divide symbol is typed with "option-?"
    }
    
    @IBAction func buttonEqual(_ sender: Any) {
        operatorChecked(Operator: "=")
    }
    
    
    
    //Main Function
    func addCharToCalc(number: Int, string: String) {
        let num = number
        let char = string
        
        if calcOutput.text == "0"{
            //clears output for numbers
            calcOutput.text = ""
        }
        if calcOutput.text == "+" || calcOutput.text == "-" || calcOutput.text == "x" || calcOutput.text == "÷"{
            calcOutput.text = ""
            equationPressed = true
        }
        
        //The number 99 is used to distinguish between numbers and operators
        //Operators are identified as the number 99
        if num != 99{
            calcOutput.text = "\(calcOutput.text!)\(num)"
        }else if num == 99{
            calcOutput.text = "\(calcOutput.text!)\(char)"
            //The variable "char" is the operator
        }
}


    func operatorChecked(Operator: String){
        let currentOperator = Operator
        let temp:Double! = Double(calcOutput.text!)
        
        if currentOperator == "+"{
            moreThanTwoNumbers(number1: temp, op: "+")
            calcOutput.text = "+"
            equationOperator = "+"
            
        }else if currentOperator == "-"{
            moreThanTwoNumbers(number1: temp, op: "-")
            calcOutput.text = "-"
            equationOperator = "-"
        }else if currentOperator == "x"{
            moreThanTwoNumbers(number1: temp, op: "x")
            calcOutput.text = "x"
            equationOperator = "x"
        }else if currentOperator == "÷"{
            moreThanTwoNumbers(number1: temp, op: "÷")
            calcOutput.text = "÷"
            equationOperator = "÷"
            
        }
        if currentOperator == "="{
            if equationOperator == nil || equationOperator == ""{
                equationOperator = "+"
            }
             equationPressed = false
            calcOutput.text = "\(completeCalculation(number1: firstNumber))"
        }
    }
    
    
    func completeCalculation(number1: Double) -> Double{
        var completedCalc:Double = 99
        let currentText = Double(calcOutput.text!)
        let currentTextInt = Int(calcOutput.text!)
        if currentText == nil && currentTextInt == nil{
            secondNumber = 0
        } else if currentText != nil{
            secondNumber = currentText
        }else if currentTextInt != nil{
            secondNumber = Double(currentTextInt!)
        }
        let number2 = Double(secondNumber!)
        
        print("\n\n1:\(number1)\n2:\(number2)\n\n")
        
        
        if equationOperator == "+"{
            completedCalc = number1+number2
            return completedCalc
        } else if equationOperator == "-"{
            completedCalc = number1-number2
            return completedCalc
        }else if equationOperator == "x"{
            completedCalc = number1*number2
            return completedCalc
        }else if equationOperator == "÷"{
            completedCalc = number1/number2
            return completedCalc
        } else{
            return 0
        }
    }
    
    func moreThanTwoNumbers(number1: Double, op: String){
        let Operator = op
        var completedCalc:Double = 99
        let currentText = Double(calcOutput.text!)
        let currentTextInt = Int(calcOutput.text!)
        if currentText == nil && currentTextInt == nil{
            secondNumber = 0
        } else if currentText != nil{
            secondNumber = currentText
        }else if currentTextInt != nil{
            secondNumber = Double(currentTextInt!)
        }
        let number2 = Double(secondNumber!)
        
        print("\n\n1:\(number1)\n2:\(number2)\n\n")
        
        
        if equationPressed == true{
            print("more than two numbers active")
            if Operator == "+"{
               completedCalc = number1+number2
                firstNumber = completedCalc
            }else if Operator == "-"{
                completedCalc = number1-number2
                firstNumber = completedCalc
            }else if Operator == "x"{
                completedCalc = number1*number2
                firstNumber = completedCalc
            }else if Operator == "÷"{
                completedCalc = number1/number2
                firstNumber = completedCalc
            }
        }else{
            print("No more than two numbers given")
            firstNumber = Double(calcOutput.text!)
        }
    }
    
    
}
