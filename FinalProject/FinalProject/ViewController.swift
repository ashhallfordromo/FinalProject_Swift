//
//  ViewController.swift
//  FinalProject
//
//  Created by Ashley Hallford Romo on 5/5/20.
//  Copyright © 2020 Ashley Hallford Romo. All rights reserved.
//

import UIKit
class Global {
    var nameVar = String()
    var gameVar = String()
    var meditateVar = String()
    var pickerVar = String()
}
let global = Global()

class ViewController: UIViewController {
    //outlets
    
    
    @IBOutlet weak var theName: UILabel!
    @IBOutlet weak var theGame: UILabel!
    @IBOutlet weak var theQuiz: UILabel!
    @IBOutlet weak var theMeditate: UILabel!
    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var myName: UITextField!
    
    
    //actions
    @IBAction func mySubmit(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "You're beautiful, " + global.nameVar
        myName.resignFirstResponder()
    }
    
    @IBAction func clickMenu(_ sender: Any) {
        
        if(navView.isHidden) {
                  navView.isHidden = false
              }
              else {
                  navView.isHidden = true
              }
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
    
    theQuiz.text = "Feeling: \(global.pickerVar)"
    theGame.text = "Quiz: \(global.gameVar)"
    theMeditate.text = "Meditation: \(global.meditateVar)"
    }
       
    override func viewWillDisappear(_ animated: Bool) {
          navView.isHidden = true
      }


}

