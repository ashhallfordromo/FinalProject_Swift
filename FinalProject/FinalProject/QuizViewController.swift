//
//  QuizViewController.swift
//  FinalProject
//
//  Created by Ashley Hallford Romo on 5/5/20.
//  Copyright © 2020 Ashley Hallford Romo. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    let items = ["Great", "Good", "Meh", "Poor", "Rough"]
    
    var selection:String!
    
    var dateChanged: Date?
    //outlets
    
    @IBOutlet weak var pickerVal: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var datePicker: UIPickerView!
    
    
    @IBOutlet weak var myImage: UIImageView!
    
    //actions
    
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        pickerVal.text = "You selected: " + selection
        if selection == "Great" {
        
                   myImage.image = UIImage(named: "great")
               }
               else if selection == "Good"{
                   
                   myImage.image = UIImage(named: "good")
               }
            else if selection == "Poor"{
                
                myImage.image = UIImage(named: "poor")
            }
            else if selection == "Rough"{
                
                myImage.image = UIImage(named: "rough")
            }
               else {
                   
                   myImage.image = UIImage(named: "meh")
               }
        
        global.pickerVar = selection
    }
        
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view.
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
