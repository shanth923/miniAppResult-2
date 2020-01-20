//
//  Sem6ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/13/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Sem6ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var appliedTher: UITextField!
    @IBOutlet var machineDesign: UITextField!
    
    @IBOutlet var mechMeasurement: UITextField!
    @IBOutlet var desElement: UITextField!
    @IBOutlet var massTransfer: UITextField!
    @IBOutlet var controlSystem: UITextField!
    @IBOutlet var mechLab: UITextField!
    
    var mainClass:Class4ViewController!
    
    var msg:String?
    
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    @IBAction func sem6Action(_ sender: UIButton) {
        
        dismiss(animated: true) {
            
            self.mainClass.sem6.append(self.appliedTher.text!)
            self.mainClass.sem6.append(self.machineDesign.text!)
            self.mainClass.sem6.append(self.mechMeasurement.text!)
            self.mainClass.sem6.append(self.desElement.text!)
            self.mainClass.sem6.append(self.massTransfer.text!)
            self.mainClass.sem6.append(self.controlSystem.text!)
            self.mainClass.sem6.append(self.machineDesign.text!)
            
            
            
            
        }
        
        
        
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == appliedTher){
            
            return true
        }
        
        if (textField == machineDesign) {
            
            if(Int(appliedTher.text!)!<75){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == mechMeasurement) {
            
            if(Int(appliedTher.text!)!<75 && Int(machineDesign.text!)!<75)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == desElement) {
            
            if(Int(appliedTher.text!)!<75 && Int(machineDesign.text!)!<75 && Int(mechMeasurement.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == massTransfer) {
            
            if(Int(appliedTher.text!)!<75 && Int(machineDesign.text!)!<75 && Int(mechMeasurement.text!)!<75 && Int(desElement.text!)!<75 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == controlSystem) {
            
            if(Int(appliedTher.text!)!<75 && Int(machineDesign.text!)!<75 && Int(mechMeasurement.text!)!<75 && Int(desElement.text!)!<75 && Int(massTransfer.text!)!<75 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == mechLab) {
            
            if(Int(appliedTher.text!)!<75 && Int(machineDesign.text!)!<75 && Int(mechMeasurement.text!)!<75 && Int(desElement.text!)!<75 && Int(massTransfer.text!)!<75 &&  Int(controlSystem.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        
        
        
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        
        
        
        if(textField == appliedTher || textField == machineDesign || textField == mechMeasurement || textField == desElement || textField == massTransfer || textField == controlSystem || textField == mechLab )
        {
            let allowCharacters = CharacterSet(charactersIn:"1234567890")
            
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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appliedTher.delegate = self
        machineDesign.delegate = self
        mechMeasurement.delegate = self
        desElement.delegate = self
        massTransfer.delegate = self
        controlSystem.delegate = self
        mechLab.delegate = self
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
