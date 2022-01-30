//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    //Dictionary
    let eggTimes = [
        "Soft" : 5,
        "Medium" :7,
        "Hard" : 8
        
    ]
    
    var totalTime = 0
    var secondsPassed = 0
    var player : AVAudioPlayer!
    
    var timer = Timer()
    
    
    @objc func updateTimer()
    {
        if secondsPassed < totalTime
        {
            secondsPassed += 1
            progressBar.progress = Float (secondsPassed) / Float (totalTime)
            
            
        }else
        {
            timer.invalidate()
            titleLabel.text = "DONE!"
            playSound(soundName: "alarm_sound")
            
            
        }
    }
    
    @IBAction func hardnessSleceted(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(updateTimer)), userInfo: nil, repeats: true)
        
       
    }
    func playSound(soundName : String) {
           let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
           player = try! AVAudioPlayer(contentsOf: url!)
           player.play()
                   
       }
    
}
