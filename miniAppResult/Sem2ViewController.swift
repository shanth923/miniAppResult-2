//
//  Sem2ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/13/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Sem2ViewController: UIViewController,UITextFieldDelegate {
    
    var mainClass:Class4ViewController!
    
    
    
    @IBOutlet var modernBio: UITextField!
    @IBOutlet var computers: UITextField!
    @IBOutlet var maths2: UITextField!
    @IBOutlet var engneering: UITextField!
    @IBOutlet var phys2: UITextField!
    @IBOutlet var comLab: UITextField!
    @IBOutlet var elecitrLab: UITextField!
    @IBOutlet var physLab: UITextField!
    
    var msg:String?
    
    
    
    var sem1Results = [String]()
    
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    @IBAction func sem2Action(_ sender: UIButton) {
        
        
        
        dismiss(animated: true) {
            
            
            print(self.modernBio.text)
            
            self.mainClass.sem2.append(self.modernBio.text!)
            self.mainClass.sem2.append(self.computers.text!)
            self.mainClass.sem2.append(self.maths2.text!)
            self.mainClass.sem2.append(self.engneering.text!)
            self.mainClass.sem2.append(self.phys2.text!)
            self.mainClass.sem2.append(self.comLab.text!)
            self.mainClass.sem2.append(self.elecitrLab.text!)
            self.mainClass.sem2.append(self.physLab.text!)
            
            
            
        }
        
        
        
        
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == modernBio){
            
            return true
        }
        
        if (textField == computers) {
            
            if(Int(modernBio.text!)!<75){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == maths2) {
            
            if(Int(modernBio.text!)!<75 &&
                Int(computers.text!)!<75)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == engneering) {
            
            if(Int(modernBio.text!)!<75 &&
                Int(computers.text!)!<75 && Int(maths2.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == phys2) {
            
            if(Int(modernBio.text!)!<75 &&
                Int(computers.text!)!<75 && Int(maths2.text!)!<75 && Int(engneering.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == comLab) {
            
            if(Int(modernBio.text!)!<75 &&
                Int(computers.text!)!<75 && Int(maths2.text!)!<75 && Int(engneering.text!)!<75 && Int(phys2.text!)!<75 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == elecitrLab) {
            
            if(Int(modernBio.text!)!<75 &&
                Int(computers.text!)!<75 && Int(maths2.text!)!<75 && Int(engneering.text!)!<75 && Int(phys2.text!)!<75 &&  Int(comLab.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == physLab) {
            
            if(Int(modernBio.text!)!<75 &&
                Int(computers.text!)!<75 && Int(maths2.text!)!<75 && Int(engneering.text!)!<75 && Int(phys2.text!)!<75 &&  Int(comLab.text!)!<75 && Int(elecitrLab.text!)!<75){
                
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
        
        
        
        if(textField == computers || textField == modernBio || textField == engneering || textField == maths2 || textField == phys2 || textField == elecitrLab || textField == phys2 || textField == physLab  )
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

        computers.delegate = self
        modernBio.delegate = self
        engneering.delegate = self
        maths2.delegate = self
        phys2.delegate = self
        elecitrLab.delegate = self
        phys2.delegate = self
        physLab.delegate = self
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
