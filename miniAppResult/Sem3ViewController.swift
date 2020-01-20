//
//  Sem3ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/13/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Sem3ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var thermodyn: UITextField!
    @IBOutlet var maths3: UITextField!
    @IBOutlet var engMaterial: UITextField!
    @IBOutlet var hss: UITextField!
    @IBOutlet var machineDrawing: UITextField!
    
    @IBOutlet var phyTrain: UITextField!
    
    @IBOutlet var ncc: UITextField!
    
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
    
    @IBAction func sem3Action(_ sender: UIButton) {
        
        dismiss(animated: true) {
            
            self.mainClass.sem3.append(self.maths3.text!)
            self.mainClass.sem3.append(self.thermodyn.text!)
            self.mainClass.sem3.append(self.engMaterial.text!)
            self.mainClass.sem3.append(self.hss.text!)
            self.mainClass.sem3.append(self.machineDrawing.text!)
            self.mainClass.sem3.append(self.phyTrain.text!)
            self.mainClass.sem3.append(self.ncc.text!)
            
            
            
            
        }
        
        
        
        
    }
    
    
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == thermodyn){
            
            return true
        }
        
        if (textField == maths3) {
            
            if(Int(thermodyn.text!)!<75){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == engMaterial) {
            
            if(Int(thermodyn.text!)!<75 &&
                Int(maths3.text!)!<75)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == hss) {
            
            if(Int(thermodyn.text!)!<75 &&
                Int(maths3.text!)!<75 && Int(engMaterial.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == machineDrawing) {
            
            if(Int(thermodyn.text!)!<75 &&  Int(maths3.text!)!<75 && Int(engMaterial.text!)!<75 && Int(hss.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == phyTrain) {
            
            if(Int(thermodyn.text!)!<75 &&
                Int(maths3.text!)!<75 && Int(engMaterial.text!)!<75 && Int(hss.text!)!<75 && Int(machineDrawing.text!)!<75 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == ncc) {
            
            if(Int(thermodyn.text!)!<75 &&
                Int(maths3.text!)!<75 && Int(engMaterial.text!)!<75 && Int(hss.text!)!<75 && Int(machineDrawing.text!)!<75 &&  Int(phyTrain.text!)!<75 ){
                
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
        
        
        
        if(textField == thermodyn || textField == maths3 || textField == engMaterial || textField == hss || textField == machineDrawing || textField == phyTrain || textField == ncc )
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
        
        thermodyn.delegate = self
        maths3.delegate = self
        engMaterial.delegate = self
        hss.delegate = self
        machineDrawing.delegate = self
        phyTrain.delegate = self
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
