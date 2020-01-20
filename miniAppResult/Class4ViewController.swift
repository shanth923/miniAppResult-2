//
//  Class4ViewController.swift
//  miniAppResult
//
//  Created by R Shantha Kumar on 11/12/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class Class4ViewController: UIViewController {

    var name  = [String]()
    var inter1StYrmarks = [String]()
    var inter2ndYrMarks = [String]()
    
    
    var sem1 = [String]()
    var sem2 = [String]()
    var sem3 = [String]()
    var sem4 = [String]()
    var sem5 = [String]()
    var sem6 = [String]()
    var sem7 = [String]()
    var sem8 = [String]()
    
   var interTotalMarks = [String]()
    
    
    
    @IBOutlet weak var thirdYrCon: UIView!
    @IBOutlet weak var secongYrCon: UIView!
    @IBOutlet weak var firstYrCon: UIView!
    @IBOutlet weak var segment1: UISegmentedControl!
    
    
    @IBOutlet weak var sem12view: UIView!
    
    
    @IBOutlet weak var sem11view: UIView!
    
    
    @IBOutlet weak var sem21view: UIView!
    
    
    @IBOutlet weak var sem22view: UIView!
    
    @IBOutlet weak var sem31view: UIView!
    
    
    
    @IBOutlet weak var sem32view: UIView!
    
    @IBOutlet weak var SEM41VIEW: UIView!
    
    @IBOutlet weak var semWise: UISegmentedControl!
    @IBOutlet weak var sem42view: UIView!
    @IBAction func actionSegment(_ sender: Any) {
        
       
        
        
        if(segment1.selectedSegmentIndex == 0){
            if(semWise.selectedSegmentIndex == 0){
                
                let sem1View  = self.storyboard?.instantiateViewController(withIdentifier: "SEM1") as! Sem1ViewController
                
                
                
                
                
                present(sem1View, animated: true)
                {
                    
                        sem1View.classes = self
                    
                }
                
                
            }else  if(segment1.selectedSegmentIndex == 0){
                if(semWise.selectedSegmentIndex == 1){
            
           
                    
            let sem2View  = self.storyboard?.instantiateViewController(withIdentifier: "SEM2") as! Sem2ViewController
                    
                    
                    
                   
                    
                    present(sem2View, animated: true)
                    {
                         sem2View.mainClass = self
                        
                        
                    }
            
                    
                }
            }
            }
        
        else if(segment1.selectedSegmentIndex == 1){
            if(semWise.selectedSegmentIndex == 0){
                
                let sem3View  = self.storyboard?.instantiateViewController(withIdentifier: "SEM3") as! Sem3ViewController
                
                
                present(sem3View, animated: true) {
                    sem3View.mainClass = self
                    
                    
                }
                
            }else  if(segment1.selectedSegmentIndex == 1){
                if(semWise.selectedSegmentIndex == 1){
                    
                    
                    
                    let sem4View  = self.storyboard?.instantiateViewController(withIdentifier: "SEM4") as! Sem4ViewController
                    
                    
                    present(sem4View, animated: true)
                    {
                        sem4View.mainClass = self
                        
                        
                        
                    }
                    
                    
                }
            }
            
        }
        
        
        
        
        else if(segment1.selectedSegmentIndex == 2){
            if(semWise.selectedSegmentIndex == 0){
                
                let sem5View  = self.storyboard?.instantiateViewController(withIdentifier: "SEM5") as! Sem5ViewController
                
                
                present(sem5View, animated: true) {
                    sem5View.mainClass = self
                }
                
                
            }else if(segment1.selectedSegmentIndex == 2){
                    if(semWise.selectedSegmentIndex == 1){
                        
                        let sem6View  = self.storyboard?.instantiateViewController(withIdentifier: "SEM6") as! Sem6ViewController
                        
                        
                        present(sem6View, animated: true) {
                            sem6View.mainClass = self
                        }
                
                
            }
            
            
        }
        }
        
        
        else if(segment1.selectedSegmentIndex == 3){
            if(semWise.selectedSegmentIndex == 0){
                
                let sem7View  = self.storyboard?.instantiateViewController(withIdentifier: "SEM7") as! Sem7ViewController
                
                
                present(sem7View, animated: true) {
                    
                    sem7View.mainClass = self
                }
                
                
            }else{
               
                let sem8View  = self.storyboard?.instantiateViewController(withIdentifier: "SEM8") as! Sem8ViewController
                
               
                present(sem8View, animated: true) {
                     sem8View.mainClass = self
                    
                }
                
            }
            
            
        }
        
       

        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        sem11view.isHidden = true
        sem12view.isHidden = true
        sem21view.isHidden = true
        sem22view.isHidden = true
        sem31view.isHidden = true
        sem32view.isHidden = true
        SEM41VIEW.isHidden = true
        sem42view.isHidden = true
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        
        let final  = self.storyboard?.instantiateViewController(withIdentifier: "FinalVC") as! FinalResultsViewController
        
        
        
      
        present(final, animated: true)
        {
            
            final.sem11.text = self.sem1[0]
            final.sem12.text = self.sem1[1]
            final.sem13.text = self.sem1[2]
            final.sem14.text = self.sem1[3]
            final.sem15.text = self.sem1[4]
            final.sem16.text = self.sem1[5]
            final.sem17.text = self.sem1[6]
            final.sem18.text = self.sem1[7]
            
            final.sem21.text = self.sem2[0]
            final.sem22.text = self.sem2[1]
            final.sem23.text = self.sem2[2]
            final.sem24.text = self.sem2[3]
            final.sem25.text = self.sem2[4]
            final.sem26.text = self.sem2[5]
            final.sem27.text = self.sem2[6]
            final.sem28.text = self.sem2[7]
            
            final.sem31.text = self.sem3[0]
            final.sem32.text = self.sem3[1]
            final.sem33.text = self.sem3[2]
            final.sem34.text = self.sem3[3]
            final.sem35.text = self.sem3[4]
            final.sem36.text = self.sem3[5]
            final.sem37.text = self.sem3[6]
            
            final.sem41.text = self.sem4[0]
            final.sem42.text = self.sem4[1]
            final.sem43.text = self.sem4[2]
            final.sem44.text = self.sem4[3]
            final.sem45.text = self.sem4[4]
            final.sem46.text = self.sem4[5]
            final.sem47.text = self.sem4[6]
            
            final.sem51.text = self.sem5[0]
            final.sem52.text = self.sem5[1]
            final.sem53.text = self.sem5[2]
            final.sem54.text = self.sem5[3]
            final.sem45.text = self.sem5[4]
            final.sem56.text = self.sem5[5]
            final.sem57.text = self.sem5[6]
            
            
            
            
            final.sem61.text = self.sem6[0]
            final.sem62.text = self.sem6[1]
            final.sem63.text = self.sem6[2]
            final.sem64.text = self.sem6[3]
            final.sem65.text = self.sem6[4]
            final.sem66.text = self.sem6[5]
            final.sem67.text = self.sem6[6]
            
            final.sem71.text = self.sem7[0]
            final.sem72.text = self.sem7[1]
            final.sem73.text = self.sem7[2]
            final.sem74.text = self.sem7[3]
            final.sem75.text = self.sem7[4]
            final.sem76.text = self.sem7[5]
            final.sem77.text = self.sem7[6]
            
            final.sem81.text = self.sem8[0]
            final.sem82.text = self.sem8[1]
            final.sem83.text = self.sem8[2]
            final.sem84.text = self.sem8[3]
            final.sem85.text = self.sem8[4]
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            

            final.name = self.name
            final.inter1StYrmarks = self.inter1StYrmarks
            final.inter2ndYrMarks  = self.inter2ndYrMarks

            final.firstName.text = self.name[0]
            final.secondNamelBL.text = self.name[1]
            final.qualificationLbl.text = self.name[2]
            final.ageLbl.text = self.name[3]


            final.sanskrit.text = self.inter1StYrmarks[0]
            final.english.text = self.inter1StYrmarks[1]
            final.maths1a.text = self.inter1StYrmarks[2]
            final.maths1b.text = self.inter1StYrmarks[3]
            final.physics.text = self.inter1StYrmarks[4]
            final.chemestry.text = self.inter1StYrmarks[5]



            final.sanskrit2.text = self.inter2ndYrMarks[0]
            final.english2.text = self.inter2ndYrMarks[1]
            final.maths2a.text = self.inter2ndYrMarks[2]
            final.mathss2b.text = self.inter2ndYrMarks[3]
            final.physics2.text = self.inter2ndYrMarks[4]
            final.chemestry2.text = self.inter2ndYrMarks[5]
            
            var marks1 = [Int]()
            
            var marks2 = [Int]()
            
            
            var total = 0
            
            for (x,y) in zip(self.inter1StYrmarks,self.inter2ndYrMarks)
            {
                let year1 = Int(x)!
                
                let year2 = Int(y)!
                
                marks1.append(year1)
                
                marks2.append(year2)
                
                
                total += (year1 + year2)
                
                
                
                
            }

            final.TOTALInterMarks.text = String(total)
            
            
            print("Total Marks: ",total)
            
            
//            final.TOTALInterMarks.text = (Int(self.inter1StYrmarks[0]) + Int(self.inter1StYrmarks[1]) + Int(self.inter1StYrmarks[0]) + Int(self.inter1StYrmarks[2]) + Int(self.inter1StYrmarks[3]) + Int(self.inter1StYrmarks[4]) + Int(self.inter1StYrmarks[5]) + Int(self.inter2ndYrMarks[0]) + Int(self.inter2ndYrMarks[1]) + Int(self.inter2ndYrMarks[2]) + Int(self.inter2ndYrMarks[3]) +  Int(self.inter2ndYrMarks[4]) + Int(self.inter2ndYrMarks[5]))
        
        
        
    }
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
