//
//  Sem5ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/13/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Sem5ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var fluidMech: UITextField!
    @IBOutlet var maTech: UITextField!
    @IBOutlet var dynMachinery: UITextField!
    @IBOutlet var deselement: UITextField!
    @IBOutlet var electrMachine: UITextField!
    @IBOutlet var hss3: UITextField!
    @IBOutlet var machineLab3: UITextField!
    
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
    
    @IBAction func sem5Action(_ sender: UIButton) {
        
        
        dismiss(animated: true) {
            
            self.mainClass.sem5.append(self.fluidMech.text!)
            self.mainClass.sem5.append(self.maTech.text!)
            self.mainClass.sem5.append(self.dynMachinery.text!)
            self.mainClass.sem5.append(self.deselement.text!)
            self.mainClass.sem5.append(self.electrMachine.text!)
            self.mainClass.sem5.append(self.hss3.text!)
            self.mainClass.sem5.append(self.machineLab3.text!)
          
            
            
            
            
        }
        
        
        
        
        
        
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == fluidMech){
            
            return true
        }
        
        if (textField == maTech) {
            
            if(fluidMech.text!.count>1){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == dynMachinery) {
            
            if(fluidMech.text!.count>1 &&
                maTech.text!.count>1)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == deselement) {
            
            if(fluidMech.text!.count>1 && maTech.text!.count>1 && dynMachinery.text!.count>1){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == electrMachine) {
            
            if(fluidMech.text!.count>1 && maTech.text!.count>1 && dynMachinery.text!.count>1 && deselement.text!.count>1){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == hss3) {
            
            if(fluidMech.text!.count>1 && maTech.text!.count>1 && dynMachinery.text!.count>1 && deselement.text!.count>1 && electrMachine.text!.count>1 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == machineLab3) {
            
            if(fluidMech.text!.count>1 && maTech.text!.count>1 && dynMachinery.text!.count>1 && deselement.text!.count>1 && electrMachine.text!.count>1 &&  hss3.text!.count>1){
                
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
        
        
        
        if(textField == fluidMech || textField == maTech || textField == dynMachinery || textField == deselement || textField == electrMachine || textField == hss3 || textField == machineLab3 )
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
        
        fluidMech.delegate = self
        maTech.delegate = self
        dynMachinery.delegate = self
        deselement.delegate = self
        electrMachine.delegate = self
        hss3.delegate = self
        machineLab3.delegate = self
        
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
