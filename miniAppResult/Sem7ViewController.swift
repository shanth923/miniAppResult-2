//
//  Sem7ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/13/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Sem7ViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet var summerTrining: UITextField!
    @IBOutlet var appliedThermo: UITextField!
    @IBOutlet var deptElectronics: UITextField!
    @IBOutlet var deptElectrive2: UITextField!
    @IBOutlet var openElectricals: UITextField!
    @IBOutlet var machineLab: UITextField!
    @IBOutlet var project: UITextField!
    
    
    var msg:String?
    var mainClass:Class4ViewController!
    
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    
    @IBAction func sem7Action(_ sender: UIButton) {
        
        dismiss(animated: true) {
            
            self.mainClass.sem7.append(self.summerTrining.text!)
            self.mainClass.sem7.append(self.appliedThermo.text!)
            self.mainClass.sem7.append(self.deptElectronics.text!)
            self.mainClass.sem7.append(self.deptElectrive2.text!)
            self.mainClass.sem7.append(self.openElectricals.text!)
            self.mainClass.sem7.append(self.machineLab.text!)
            self.mainClass.sem7.append(self.project.text!)
            
            
            
            
        }
    }
    
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == summerTrining){
            
            return true
        }
        
        if (textField == appliedThermo) {
            
            if(Int(summerTrining.text!)!<75){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == deptElectronics) {
            
            if(Int(summerTrining.text!)!<75 && Int(appliedThermo.text!)!<75)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == deptElectrive2) {
            
            if(Int(summerTrining.text!)!<75 && Int(appliedThermo.text!)!<75 && Int(deptElectronics.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == openElectricals) {
            
            if(Int(summerTrining.text!)!<75 && Int(appliedThermo.text!)!<75 && Int(deptElectronics.text!)!<75 && Int(deptElectrive2.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == machineLab) {
            
            if(Int(summerTrining.text!)!<75 && Int(appliedThermo.text!)!<75 && Int(deptElectronics.text!)!<75 && Int(deptElectrive2.text!)!<75 && Int(openElectricals.text!)!<75 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == project) {
            
            if(Int(summerTrining.text!)!<75 && Int(appliedThermo.text!)!<75 && Int(deptElectronics.text!)!<75 && Int(deptElectrive2.text!)!<75 && Int(openElectricals.text!)!<75 && Int(machineLab.text!)!<75){
                
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
        
        
        
        if(textField == summerTrining || textField == appliedThermo || textField == deptElectronics || textField == deptElectrive2 || textField == openElectricals || textField == machineLab || textField == project )
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
        
        summerTrining.delegate = self
        appliedThermo.delegate = self
        deptElectrive2.delegate = self
        openElectricals.delegate = self
        machineLab.delegate = self
        project.delegate = self
        deptElectronics.delegate = self
        
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
