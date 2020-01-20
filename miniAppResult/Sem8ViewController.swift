//
//  Sem8ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/13/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Sem8ViewController: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet var industrialEng: UITextField!
    @IBOutlet var deptElectrive: UITextField!
    @IBOutlet var deptElect: UITextField!
    @IBOutlet var hss4: UITextField!
    @IBOutlet var project2: UITextField!
    
    var msg:String?
    var mainClass:Class4ViewController!
    @IBAction func sem8Action(_ sender: UIButton) {
        
        dismiss(animated: true) {
            
            self.mainClass.sem8.append(self.industrialEng.text!)
            self.mainClass.sem8.append(self.deptElect.text!)
            self.mainClass.sem8.append(self.deptElect.text!)
            self.mainClass.sem8.append(self.hss4.text!)
            self.mainClass.sem8.append(self.project2.text!)
          
            
            
            
            
        }
        
        
    }
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == industrialEng){
            
            return true
        }
        
        if (textField == deptElectrive) {
            
            if(Int(industrialEng.text!)!<75){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == deptElect) {
            
            if(Int(industrialEng.text!)!<75 && Int(deptElectrive.text!)!<75)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == hss4) {
            
            if(Int(industrialEng.text!)!<75 && Int(deptElectrive.text!)!<75 && Int(deptElect.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == project2) {
            
            if(Int(industrialEng.text!)!<75 && Int(deptElectrive.text!)!<75 && Int(deptElect.text!)!<75 && Int(hss4.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:200"
                toast()
                return false
                
            }
        }
        
        
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        
        
        
        if(textField == industrialEng || textField == deptElectrive || textField == deptElect || textField == hss4 || textField == project2  )
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
        
        industrialEng.delegate = self
        deptElectrive.delegate = self
        deptElect.delegate = self
        hss4.delegate = self
        project2.delegate = self
       
        
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
