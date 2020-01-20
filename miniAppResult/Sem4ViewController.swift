//
//  Sem4ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/13/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Sem4ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var fluidMech: UITextField!
    @IBOutlet var manufacturTech: UITextField!
    @IBOutlet var solidMech: UITextField!
    @IBOutlet var kinOfEng: UITextField!
    @IBOutlet var hss2: UITextField!
    @IBOutlet var workShop2: UITextField!
    @IBOutlet var ncc: UITextField!
    
    
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
    
    @IBAction func sem4Action(_ sender: UIButton) {
        
        dismiss(animated: true) {
            
            self.mainClass.sem4.append(self.fluidMech.text!)
            self.mainClass.sem4.append(self.manufacturTech.text!)
            self.mainClass.sem4.append(self.solidMech.text!)
            self.mainClass.sem4.append(self.kinOfEng.text!)
            self.mainClass.sem4.append(self.hss2.text!)
            self.mainClass.sem4.append(self.workShop2.text!)
            self.mainClass.sem4.append(self.ncc.text!)
            
            
            
            
        }
        
        
        
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == fluidMech){
            
            return true
        }
        
        if (textField == manufacturTech) {
            
            if(Int(fluidMech.text!)!<75){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == solidMech) {
            
            if(Int(fluidMech.text!)!<75 &&
                Int(manufacturTech.text!)!<75)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == kinOfEng) {
            
            if(Int(fluidMech.text!)!<75 &&
                Int(manufacturTech.text!)!<75 && Int(solidMech.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == hss2) {
            
            if(Int(fluidMech.text!)!<75 &&
                Int(manufacturTech.text!)!<75 && Int(solidMech.text!)!<75 && Int(kinOfEng.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == workShop2) {
            
            if(Int(fluidMech.text!)!<75 &&
                Int(manufacturTech.text!)!<75 && Int(solidMech.text!)!<75 && Int(kinOfEng.text!)!<75 && Int(hss2.text!)!<75 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == ncc) {
            
            if(Int(fluidMech.text!)!<75 &&
                Int(manufacturTech.text!)!<75 && Int(solidMech.text!)!<75 && Int(kinOfEng.text!)!<75 && Int(hss2.text!)!<75 &&  Int(workShop2.text!)!<75){
                
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
        
        
        
        if(textField == fluidMech || textField == manufacturTech || textField == solidMech || textField == kinOfEng || textField == workShop2 || textField == hss2 || textField == ncc )
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
        manufacturTech.delegate = self
        solidMech.delegate = self
        kinOfEng.delegate = self
        hss2.delegate = self
        workShop2.delegate = self
        ncc.delegate = self
        
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
