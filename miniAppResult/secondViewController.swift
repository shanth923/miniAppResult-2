//
//  secondViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/11/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class secondViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var data: UILabel!
    
   
    
    @IBOutlet weak var sansskritText: UITextField!
    
    @IBOutlet weak var maths2ATxtField: UITextField!
    
    @IBOutlet var englishMarks: UITextField!
    
    @IBOutlet var maths1b: UITextField!
    
    @IBOutlet var physicsMrks: UITextField!
    
    
    @IBOutlet var chemestryMarks: UITextField!
    
    
    @IBOutlet weak var interSegment: UISegmentedControl!
    
    
    var name = [String]()
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
        
        if(textField == sansskritText){
            
            return true
        }
        
        if (textField == englishMarks) {
            
            if(Int(sansskritText.text!)!<100){
                
                return true
                
            }else
            {
                
                
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
        }
        else if (textField == maths2ATxtField) {
            
            if(Int(sansskritText.text!)!<100 &&
                Int(englishMarks.text!)!<100)
            {
                
                return true
                
            }else
            {
                
                msg = "ffill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
        }
            
        else if (textField == maths1b) {
            
            if(Int(sansskritText.text!)!<100 &&
                Int(englishMarks.text!)!<100 && Int(maths2ATxtField.text!)!<100){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
        }
        
        else if (textField == physicsMrks) {
            
            if(Int(sansskritText.text!)!<100 &&
                Int(englishMarks.text!)!<100 && Int(maths2ATxtField.text!)!<100 && Int(maths1b.text!)!<100){
                
                return true
                
            }else
            {
                msg = "fill the Marks properly,Max Marks:100"
                toast()
                return false
                
            }
        }
        else if (textField == chemestryMarks) {
            
            if(Int(sansskritText.text!)!<100 &&
                Int(englishMarks.text!)!<100 && Int(maths2ATxtField.text!)!<100 && Int(maths1b.text!)!<100 && Int(physicsMrks.text!)!<100 ){
                
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
        
        
        
        if(textField == sansskritText || textField == englishMarks || textField == maths2ATxtField || textField == maths1b || textField == physicsMrks || textField == chemestryMarks )
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
    
    func toasts ()
    {
        
        let alertControl = UIAlertController(title: "WARNING", message: "\(msg!)", preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { (cancelAlert) in
            
        }
        alertControl.addAction(alertAction)
        present(alertControl, animated: true, completion: nil)
        
    }
    
    
    @IBAction func nextBtn2(_ sender: UIButton) {
        
        let thirdView  = self.storyboard?.instantiateViewController(withIdentifier: "thirdVC") as! thirdViewController
        
        
        if(sansskritText.text!.count>1 && englishMarks.text!.count>1 && maths2ATxtField.text!.count>1 && maths1b.text!.count>1 && physicsMrks.text!.count>1 && chemestryMarks.text!.count>1){
        
        present(thirdView, animated: true)
        {
            
            thirdView.inter1StYrmarks.append(self.sansskritText.text!)
            thirdView.inter1StYrmarks.append(self.englishMarks.text!)
            thirdView.inter1StYrmarks.append(self.maths2ATxtField.text!)
            thirdView.inter1StYrmarks.append(self.maths1b.text!)
            thirdView.inter1StYrmarks.append(self.physicsMrks.text!)
            thirdView.inter1StYrmarks.append(self.chemestryMarks.text!)
            
            thirdView.name = self.name
            
        }
        
        }else{
            
            msg = "pleae fill al the fields"
            toasts()
            
        }


    }
    
    @IBOutlet weak var interSegmentciontrolOutlet: UISegmentedControl!
    @IBAction func inter(_ sender: UISegmentedControl) {
        
        if(interSegmentciontrolOutlet.selectedSegmentIndex==1){
            
            let thirdView  = self.storyboard?.instantiateViewController(withIdentifier: "thirdVC") as! thirdViewController
            
            if(sansskritText.text!.count>1 && englishMarks.text!.count>1 && maths2ATxtField.text!.count>1 && maths1b.text!.count>1 && physicsMrks.text!.count>1 && chemestryMarks.text!.count>1){
                
                present(thirdView, animated: true)
                {
                    
                    thirdView.inter1StYrmarks.append(self.sansskritText.text!)
                    thirdView.inter1StYrmarks.append(self.englishMarks.text!)
                    thirdView.inter1StYrmarks.append(self.maths2ATxtField.text!)
                    thirdView.inter1StYrmarks.append(self.maths1b.text!)
                    thirdView.inter1StYrmarks.append(self.physicsMrks.text!)
                    thirdView.inter1StYrmarks.append(self.chemestryMarks.text!)
                    
                    thirdView.name = self.name
                    
                }
                
            }else{
                
                msg = "pleae fill al the fields"
                toasts()
                
            }
            if(interSegmentciontrolOutlet.selectedSegmentIndex==0){
                
                let secondView  = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! secondViewController
                
                present(secondView, animated: true)
                {
                    
            
                    
                }
                
            
            
        }
        
        
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        sansskritText.delegate = self
        englishMarks.delegate = self
        maths2ATxtField.delegate = self
        maths1b.delegate = self
        physicsMrks.delegate = self
        chemestryMarks.delegate = self
        
        
       
        
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
