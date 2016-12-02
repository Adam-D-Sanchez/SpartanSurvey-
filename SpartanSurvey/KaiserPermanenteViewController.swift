//
//  KaiserPermanenteViewController.swift
//  SpartanSurvey
//
//  Created by Guillermo Colin on 11/18/16.
//  Copyright © 2016 SJSU. All rights reserved.
//

import UIKit

class KaiserPermanenteViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var physicallyHealthyPicker: UIPickerView!
    @IBOutlet weak var exerciseImportancePicker: UIPickerView!
    @IBOutlet weak var exerciseFrequencyPicker: UIPickerView!
    @IBOutlet weak var mealsPicker: UIPickerView!
    
    var physicallyHealthyTypes = ["Extremely healthy","Healthy","Not at all healthy"]
    
    var exerciseImportanceTypes = ["Extremely important","Not at all important","N/A"]
    
    var exerciseFrequencyTypes = ["Lift weights","Walk","Run","Hike","Dance"]
    
    var mealsTypes = ["1","2","3","4", "5", "more than 5"]
    
    //  vars for storing the answers from the pickers.
    var ans1:String = ""
    var ans2:String = ""
    var ans3:String = ""
    var ans4:String = ""

    
    //  func to apply custom font to the pickers.
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        pickerLabel.textColor = UIColor.black
        pickerLabel.font = UIFont(name: "Arial-BoldMT", size: 12)
        pickerLabel.textAlignment = NSTextAlignment.center
        
        
        if(pickerView == physicallyHealthyPicker){
            pickerLabel.text = physicallyHealthyTypes[row]
        }
        if(pickerView == exerciseImportancePicker){
            pickerLabel.text = exerciseImportanceTypes[row]
        }
        if(pickerView == exerciseFrequencyPicker){
            pickerLabel.text = exerciseFrequencyTypes[row]
        }
        if(pickerView == mealsPicker){
            pickerLabel.text = mealsTypes[row]
        }
        
        return pickerLabel
    }
    
    
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if (pickerView == physicallyHealthyPicker){
            return physicallyHealthyTypes[row]
        }
        
        if (pickerView == exerciseImportancePicker){
            return exerciseImportanceTypes[row]
        }
        
        if (pickerView == exerciseFrequencyPicker){
            return exerciseFrequencyTypes[row]
        }
        
        
        return mealsTypes[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        if (pickerView == physicallyHealthyPicker){
            return physicallyHealthyTypes.count
        }
        
        if (pickerView == exerciseImportancePicker){
            return exerciseImportanceTypes.count
        }
        
        if (pickerView == exerciseFrequencyPicker){
            return exerciseFrequencyTypes.count
        }
        
        return mealsTypes.count
    }
    
    //  func for getting current picker choice
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (pickerView == physicallyHealthyPicker){
            ans2 = physicallyHealthyTypes[row]
        }
        if (pickerView == exerciseImportancePicker){
            ans3 = exerciseImportanceTypes[row]
        }
        if (pickerView == exerciseFrequencyPicker){
            ans4 = exerciseFrequencyTypes[row]
        }
        
        if (pickerView == mealsPicker){
            ans1 = mealsTypes[row]
        }
        
        
    }
 
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        
        return 1
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
