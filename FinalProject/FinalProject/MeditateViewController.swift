//
//  MeditateViewController.swift
//  FinalProject
//
//  Created by Ashley Hallford Romo on 5/5/20.
//  Copyright © 2020 Ashley Hallford Romo. All rights reserved.
//

import UIKit

class MeditateViewController: UIViewController {

    //variables
    
    
    var counter:Int = 30
    var timer = Timer()
    var isTimerRunning:Bool = false
    
    //outlets
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    
    //actions
    
    
    
    @IBAction func myButton(_ sender: Any) {
        if isTimerRunning == false {
        runTimer()
        }
    }
    
   
    @IBAction func myRestart(_ sender: Any) {
        timer.invalidate()
        counter = 30
        timerLabel.text = "\(counter)"
        isTimerRunning = false
    }
    
    func runTimer() {
    timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(MeditateViewController.updateTimer)), userInfo: nil, repeats: true)
    isTimerRunning = true
        }
    
    @objc func updateTimer() {
        counter -= 1
        timerLabel.text = "\(counter)"
        if(counter == 0) {
            timerLabel.text = "You did it!"
            timer.invalidate()
       
        }
        global.meditateVar = timerLabel.text!
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
