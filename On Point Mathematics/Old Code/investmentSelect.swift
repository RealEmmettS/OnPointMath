//
//  investmentSelect.swift
//  On Point Mathematics
//
//  Created by Emmett S. on 1/13/18.
//  Copyright © 2018 Emmett S. All rights reserved.
//
import UIKit
//import SnapKit
class investmentSelect: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        principle.delegate = self
        rate.delegate = self
        time.delegate = self
        
        interest.text = ""
        
//        if UnivCheckEasyModeState() == 1{
//            performSegue(withIdentifier: "EasyMode", sender: self)
//        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UnivCheckEasyModeState() == 1{
            performSegue(withIdentifier: "EasyMode", sender: self)
        }
    }
    
    //Picker View
    @IBOutlet weak var picker: UIPickerView!
    
    //inputs
    @IBOutlet weak var principle: UITextField!
    @IBOutlet weak var rate: UITextField!
    @IBOutlet weak var time: UITextField!
    
    let boc = 0
    
    
    
    
    
    
    //output
    @IBOutlet weak var interest: UILabel!
    @IBOutlet weak var accountbal: UILabel!
    
    
    
    
    // MARK: - selectCalc
    func selectCalculation(fromRow selectedRow: Int){
        if self.canCalculate() {
            if selectedRow == 1 {
                time.placeholder = "What's the time? (of loan in years)"
                self.simpleInterest()
            } else if selectedRow == 2 {
                time.placeholder = "What's the time? (of loan in years)"
                self.compoundInterest()
            } else if selectedRow == 3 {
                time.placeholder = "What's the time? (of loan in months)"
                self.carLoan()
            }
            
        }
    }
    
    
    
    // MARK: - Editing
    func textFieldDidEndEditing(_ textField: UITextField) {
        let selectedRow = self.picker.selectedRow(inComponent: 0)
        if textField == principle {
            print("Priciple Ended")
            self.selectCalculation(fromRow: selectedRow)
        } else if textField == rate {
            print("Rate Ended")
            self.selectCalculation(fromRow: selectedRow)
        }else if textField == time{
            print("Time Ended")
            self.selectCalculation(fromRow: selectedRow)
        }
    }
    // MARK: canCalculate
    func canCalculate() -> Bool {
        var isFilledIn = false
        if principle.text != nil && rate.text != nil && time.text != nil {
            isFilledIn = true
        } else {
            print("we could put an alert here!!")
        }
        
        return isFilledIn
    }
    
    
    //Picker Options
    let options = ["--Select Calc Type--","Simple Interest","Compound Interest","Car Loan"]
    
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
            accountbal.text = "Answer Shows Up\nHere"
            interest.text = ""
            time.placeholder = "What's the time? (of loan in years)"
        }else if row == 1 {
            //Simple Interest Calculator
            time.placeholder = "What's the time? (of loan in years)"
            self.simpleInterest()
            
        }else if row == 2 {
            //Compound Interest Calculator
            time.placeholder = "What's the time? (of loan in years)"
            self.compoundInterest()
            
        }else if row == 3 {
            //Car Loan
            time.placeholder = "What's the time? (of loan in months)"
            self.carLoan()
        }
    }
    
    
    func p() -> Float {
        var p = Float(principle.text!);
        if p == nil{
            p = 0
        }
        return p!
    }
    
    func r() -> Float {
        var r = Float(rate.text!);
        if r == nil{
            r = 0
        }
        return r!
    }
    
    func t() -> Float {
        var t = Float(time.text!);
        if t == nil{
            t = 0
        }
        return t!
    }
    
    
    func simpleInterest(){
        //Simple Interest Calculator
        let r = self.r()
        let re = r/100
        
        let t = self.t()
        let p = self.p()
        
        let interestans = p*re*t
        let accountbalans = interestans+p
        
        interest.text = "Interest About:\n $\(interestans)";
        accountbal.text = "Account Bal. About:\n $\(accountbalans)";
    }
    
    func compoundInterest(){
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
        
        interest.text = "Interest About:\n $\(accountBalanceprt4-p!)";
        accountbal.text = "Account Bal. About:\n $\(accountBalanceprt4)";
    }
    
    func carLoan() {
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
        
        
        //let allSteps =  p!*(r! / 12) / (1 - (1 + r!) / 12)-t!
        
        let step1 = re/12
        let step2 = step1*p!
        let step3 = step1+1
        let step4 = pow(step3, t!)
        let step5 = 1/step4
        let step6 = 1-step5
        let step7 = step2/step6
        
        let roundedStep7 = round(step7)
        //let roundedAllSteps = round(allSteps)
        
        
        interest.text = "Monthly Payments: \(roundedStep7)\n(No Down Payments)";
        accountbal.text = "";
        
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

