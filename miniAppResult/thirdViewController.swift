//
//  thirdViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/11/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController,UITextFieldDelegate {
    
    var name  = [String]()
    var inter1StYrmarks = [String]()
    
    
    @IBOutlet var sanskrit2ndyrMarks: UITextField!
    
    @IBOutlet var english2ndYrMarks: UITextField!
    
    @IBOutlet var maths2Amarks: UITextField!
    
    @IBOutlet var maths2bMark: UITextField!
    @IBOutlet var physic2ndYrMarks: UITextField!
    
    @IBOutlet var chemestry2ndMarks: UITextField!
    
    
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
        
        if(textField == sanskrit2ndyrMarks){
            
            return true
        }
        
        if (textField == english2ndYrMarks) {
            
            if(sanskrit2ndyrMarks.text!.count>1){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly"
                toast()
                return false
                
            }
        }
        else if (textField == maths2Amarks) {
            
            if(sanskrit2ndyrMarks.text!.count>1 &&
                english2ndYrMarks.text!.count>1)
            {
                
                return true
                
            }else
            {
                
                msg = "fill the blanks properly"
                toast()
                return false
                
            }
        }
            
        else if (textField == maths2bMark) {
            
            if(sanskrit2ndyrMarks.text!.count>1 && english2ndYrMarks.text!.count>1 && maths2Amarks.text!.count>1){
                
                return true
                
            }else
            {
                msg = "fill the blanks properly"
                toast()
                return false
                
            }
        }
            
        else if (textField == physic2ndYrMarks) {
            
            if(sanskrit2ndyrMarks.text!.count>1 && english2ndYrMarks.text!.count>1 && maths2Amarks.text!.count>1 && maths2bMark.text!.count>1){
                
                return true
                
            }else
            {
                msg = "fill the blanks properly"
                toast()
                return false
                
            }
        }
        else if (textField == chemestry2ndMarks) {
            
            if(sanskrit2ndyrMarks.text!.count>1 && english2ndYrMarks.text!.count>1 && maths2Amarks.text!.count>1 && maths2bMark.text!.count>1 && physic2ndYrMarks.text!.count>1 ){
                
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
        
        
        
        if(textField == sanskrit2ndyrMarks || textField == english2ndYrMarks || textField == maths2Amarks || textField == maths2bMark || textField == physic2ndYrMarks || textField == chemestry2ndMarks )
        {
            let allowCharacters = CharacterSet(charactersIn:"123456789")
            
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
    
    
    
    @IBAction func nextBtn3(_ sender: UIButton) {
        
       let fourthView  = self.storyboard?.instantiateViewController(withIdentifier: "fourthVC") as! Class4ViewController
        
        present(fourthView, animated: true)
        {
                 fourthView.inter2ndYrMarks.append(self.sanskrit2ndyrMarks.text!)
                fourthView.inter2ndYrMarks.append(self.english2ndYrMarks.text!)
                fourthView.inter2ndYrMarks.append(self.maths2Amarks.text!)
                fourthView.inter2ndYrMarks.append(self.maths2bMark.text!)
                fourthView.inter2ndYrMarks.append(self.physic2ndYrMarks.text!)
                fourthView.inter2ndYrMarks.append(self.chemestry2ndMarks.text!)
            
           fourthView.name = self.name
            fourthView.inter1StYrmarks = self.inter1StYrmarks
            
            
            
            }
            
        }
  
    @IBOutlet weak var esgmentinter: UISegmentedControl!
    @IBAction func inter1(_ sender: UISegmentedControl) {
        
        if(esgmentinter.selectedSegmentIndex==0){
            
            let secondView  = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! secondViewController
            
            present(secondView, animated: true)
            {
                
                
                
            }
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()

     sanskrit2ndyrMarks.delegate = self
        english2ndYrMarks.delegate = self
        maths2Amarks.delegate = self
        maths2bMark.delegate = self
        physic2ndYrMarks.delegate = self
        chemestry2ndMarks.delegate = self
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
