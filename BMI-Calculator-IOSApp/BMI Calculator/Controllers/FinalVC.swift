//
//  FinalVC.swift
//  BMI Calculator
//
//  Created by Bilge Çakar on 8.03.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class FinalVC: UIViewController {

    var bmiValue : String?
    var advice :  String?
    var color : UIColor?
    
    @IBOutlet weak var bmiResult: UILabel!
    
    @IBOutlet weak var acviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.text = bmiValue
        acviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
