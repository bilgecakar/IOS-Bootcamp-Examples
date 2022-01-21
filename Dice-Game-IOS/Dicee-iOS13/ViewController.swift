//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DiceView1: UIImageView!
    @IBOutlet weak var DiceView2: UIImageView!
    
    let diceImages = [ #imageLiteral(resourceName: "DiceOne") , #imageLiteral(resourceName: "DiceFour") , #imageLiteral(resourceName: "DiceThree") , #imageLiteral(resourceName: "DiceSix") , #imageLiteral(resourceName: "DiceFive") , #imageLiteral(resourceName: "DiceFive") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Roll(_ sender: UIButton) {
        
        DiceView1.image = diceImages[Int.random(in: 0...5)]
        DiceView2.image = diceImages[Int.random(in: 0...5)]
        
    }
    
}

