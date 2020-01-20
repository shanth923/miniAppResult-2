//
//  ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/11/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    
    var todayDate = Date()
    var dateFormatter = DateFormatter()
    
    var ageDatePicker = UIDatePicker()
    var minimumDate = DateComponents()
    
    var pickerView = UIPickerView()


    @IBOutlet weak var firstNameTxtFeild: UITextField!
    
    
    
    @IBOutlet weak var secondNameTxtField: UITextField!
    
    @IBOutlet weak var qualificationTxtField: UITextField!
    
    @IBOutlet weak var ageTxtField: UITextField!
    
  
    @objc func ageDateEvent(){
        
        minimumDate.year = 1970
        minimumDate.month = 10
        minimumDate.day = 10
        
        let fromDate = Calendar.current.date(from: minimumDate)
        
        dateFormatter.dateFormat = "dd-MM-YYYY"
        
        ageDatePicker.maximumDate = todayDate
        ageDatePicker.minimumDate = fromDate
        
        var datePick = Calendar.current.dateComponents([.year,.month,.day], from:ageDatePicker.date, to: todayDate)
        
        ageTxtField.text = dateFormatter.string(from: ageDatePicker.date)
        
        
    }

    
    var select = ["b.tech","intermediate","ssc","5th class"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTxtFeild.delegate=self
        secondNameTxtField.delegate = self
        qualificationTxtField.delegate=self
        ageTxtField.delegate = self
        
        ageDatePicker.datePickerMode = .date
        
        
        ageDatePicker.addTarget(self, action: #selector(ageDateEvent), for: UIControl.Event.valueChanged)
        
        
        ageTxtField.inputView = ageDatePicker
        
        
        ageTxtField.addTarget(self, action: #selector(ageDateEvent), for: UIControl.Event.valueChanged)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    var msg:String!
    
    
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
    alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
    
    }
    
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == firstNameTxtFeild){
            
            return true
        }
        
        if (textField == secondNameTxtField) {
            
            if(firstNameTxtFeild.text!.count>1){
                
                return true
                
            }else
            {
                
                
                msg = "fill the blanks properly"
                toast()
                return false
                
            }
        }
        else if (textField == qualificationTxtField) {
            
            if(firstNameTxtFeild.text!.count>1 &&
                secondNameTxtField.text!.count>1)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the blanks properly"
                toast()
                return false
                
            }
        }
            
        else if (textField == ageTxtField) {
            
            if(firstNameTxtFeild.text!.count>1 && secondNameTxtField.text!.count>1 && qualificationTxtField.text!.count>1){
                
                return true
                
            }else
            {
                msg = "fill the blanks properly"
                toast()
                return false
                
            }
        }
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        
        
        
        if(textField == firstNameTxtFeild || textField == secondNameTxtField || textField == qualificationTxtField)
        {
            let allowCharacters = CharacterSet(charactersIn:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz. ")
            
            if(string.rangeOfCharacter(from: allowCharacters) != nil||string == "")
            {
                
                return true
            }
            else
            {
                msg = "invaild keywords"
                toast()
                return false
            }
        }
        
        return true
        
        
    }
    
    func toasts ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func nextBtn1(_ sender: UIButton) {
        
        
        
        
        
        
        

        let secondView  = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! secondViewController
       
        
        if(firstNameTxtFeild.text!.count>1 && secondNameTxtField.text!.count>1 && qualificationTxtField.text!.count>1 && ageTxtField.text!.count>1)
        {
            present(secondView, animated: true, completion: {
                
                secondView.name.append(self.firstNameTxtFeild.text!)
                
                secondView.name.append(self.secondNameTxtField.text!)
                
                secondView.name.append(self.qualificationTxtField.text!)
                
                secondView.name.append(self.ageTxtField.text!)
                })
        }
        else
                {
                
                    msg = "please fill all the fields"
                        
                    toasts()
            }
        
        
       
            
        
            
            
            
        
        
        //{


//            final.firstNameLbl.text = self.firstNameTxtFeild.text!
//            final.secondNamelBL.text = self.secondNameTxtField.text!
//            final.qualificationLbl.text = self.qualificationTxtField.text!
//            final.ageLbl.text = self.ageTxtField.text!


        //}
        

        
        
        
        
        
        
        
        
        
    }
    


}

