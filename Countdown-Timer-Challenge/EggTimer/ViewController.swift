//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    //Dictionary
    let eggTimes = [
        "Soft" : 5,
        "Medium" :7,
        "Hard" : 8
        
    ]
    
    var second = 60
    
    
    var timer = Timer()
    
    
    @objc func updateTimer()
    {
        if second > 0
        {
            print("\(second)  seconds.")
            second -= 1
            
        }else
        {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
    
    @IBAction func hardnessSleceted(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        second = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
        
       
    }
    
}
