//
//  Sem1ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/12/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Sem1ViewController: UIViewController,UITextFieldDelegate{

   var classes:Class4ViewController!
    
    
    @IBOutlet weak var chemestry: UITextField!
    
    
    @IBOutlet var electrical: UITextField!
    @IBOutlet weak var maths1: UITextField!
    
    @IBOutlet weak var physics: UITextField!
    
   @IBOutlet weak var chemestryLab: UITextField!
    
    @IBOutlet weak var workshop: UITextField!
    
    @IBOutlet weak var engineeeringshop: UITextField!
    
    @IBOutlet weak var physicalTrain: UITextField!
    
    @IBAction func getdata(_ sender: UIButton) {
        
        dismiss(animated: true) {
            
            self.classes.sem1.append(self.chemestry.text!)
            self.classes.sem1.append(self.electrical.text!)
            self.classes.sem1.append(self.maths1.text!)
            self.classes.sem1.append(self.physics.text!)
            self.classes.sem1.append(self.chemestryLab.text!)
            self.classes.sem1.append(self.workshop.text!)
            self.classes.sem1.append(self.engineeeringshop.text!)
            self.classes.sem1.append(self.physicalTrain.text!)
            
            
            
        }
       
        
        
      
        
        
    }
    
    var msg:String?
    
    func toast ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool{
        
        if(textField == chemestry){
            
            return true
        }
        
        if (textField == electrical) {
            
            if(Int(chemestry.text!)!<75){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == maths1) {
            
            if(Int(chemestry.text!)!<75 &&
                Int(electrical.text!)!<75)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == physics) {
            
            if(Int(chemestry.text!)!<75 &&
                Int(electrical.text!)!<75 && Int(maths1.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
            
        else if (textField == chemestryLab) {
            
            if(Int(chemestry.text!)!<75 &&
                Int(electrical.text!)!<75 && Int(electrical.text!)!<75 && Int(physics.text!)!<75){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        else if (textField == workshop) {
            
            if(Int(chemestry.text!)!<75 &&
                Int(electrical.text!)!<75 && Int(electrical.text!)!<75 && Int(physics.text!)!<75 && Int(chemestryLab.text!)!<75 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        
        else if (textField == engineeeringshop) {
            
            if(Int(chemestry.text!)!<75 &&
                Int(electrical.text!)!<75 && Int(electrical.text!)!<75 && Int(physics.text!)!<75 && Int(chemestryLab.text!)!<75 &&  Int(workshop.text!)!<75 ){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:75"
                toast()
                return false
                
            }
        }
        
        else if (textField == physicalTrain) {
            
            if(Int(chemestry.text!)!<75 &&
                Int(electrical.text!)!<75 && Int(electrical.text!)!<75 && Int(physics.text!)!<75 && Int(chemestryLab.text!)!<75 &&  Int(workshop.text!)!<75 &&  Int(engineeeringshop.text!)!<75 ){
                
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
        
        
        
        if(textField == chemestry || textField == electrical || textField == maths1 || textField == physics || textField == chemestryLab || textField == workshop || textField == engineeeringshop || textField == physicalTrain  )
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

        chemestry.delegate = self
        electrical.delegate = self
        maths1.delegate = self
        chemestryLab.delegate = self
        physics.delegate = self
        workshop.delegate = self
        engineeeringshop.delegate = self
        physicalTrain.delegate = self
    
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
