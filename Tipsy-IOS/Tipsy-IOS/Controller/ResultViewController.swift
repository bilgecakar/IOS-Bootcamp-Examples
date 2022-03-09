//
//  ResultViewController.swift
//  Tipsy-IOS
//
//  Created by Bilge Çakar on 9.03.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    
    var result : String?
    var tip : Double?
    var split : Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let tempResult = result, let tempTimp = tip, let tempSplit = split
        {
            let roundSplit = String(format: "%0.f", tempSplit)
            let roundTip = String(format: "%0.f", (tempTimp * 100))
            totalLabel.text = tempResult
            settingLabel.text = "Split between \(roundSplit) people, with %\(roundTip) tip"
        }
        
    }
    

}
