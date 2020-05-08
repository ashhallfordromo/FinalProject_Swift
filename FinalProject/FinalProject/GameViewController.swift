//
//  GameViewController.swift
//  FinalProject
//
//  Created by Ashley Hallford Romo on 5/5/20.
//  Copyright © 2020 Ashley Hallford Romo. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var water:Int = 0
    var body:Int = 0
    var clothes:Int = 0
    var walk:Int = 0
    var outside:Int = 0
    var total:Int = 0
    
    //outlets
    
    
    @IBAction func submit(_ sender: Any) {
        total = water + body + clothes + walk + outside
        if(total <= 2) {
           myTotal.text = "Love yourself more today!"
                }
        else if(total > 2 && total <= 4){
           myTotal.text = "You are taking care of yourself!"
                }
        else {
             myTotal.text = "You are a self-care champion!"
                }
        global.gameVar = myTotal.text!
    }
    @IBOutlet weak var myTotal: UILabel!
    
    //actions
    
    @IBAction func selectWater(_ sender: UISwitch) {
        if sender.isOn {
                   water = 1
               }
              else {
                   water = 0
    }
    }
    
    @IBAction func selectBody(_
        sender: UISwitch) {
        if sender.isOn {
                   body = 1
               }
              else {
                   body = 0
    }
    }
    
    @IBAction func selectWalk(_ sender: UISwitch) {
        if sender.isOn {
                   clothes = 1
               }
              else {
                   clothes = 0
            
        }
    }
    
    @IBAction func selectClothes(_ sender: UISwitch) {
        if sender.isOn {
                   walk = 1
               }
              else {
                   walk = 0
    }
    }
    
    @IBAction func selectOutside(_ sender: UISwitch) {
        if sender.isOn {
                   outside = 1
               }
              else {
                   outside = 0
    }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
