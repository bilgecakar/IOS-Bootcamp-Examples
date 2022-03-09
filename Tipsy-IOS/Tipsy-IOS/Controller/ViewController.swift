//
//  ViewController.swift
//  Tipsy-IOS
//
//  Created by Bilge Çakar on 8.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billTextfield: UITextField!
    @IBOutlet weak var zeroPtcButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPtcButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    var tip = 0.10
    var splitNumber = 0.0
    var total : String = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func tipCahnged(_ sender: UIButton) {
        zeroPtcButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPtcButton.isSelected = false
        sender.isSelected = true
        
        tip = Double(sender.tag) * 0.1
        
        
    }
    
    @IBAction func stepperValurChanged(_ sender: UIStepper) {
        splitNumber = sender.value
        splitNumberLabel.text = String(format: "%0.f", sender.value)
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        let bill = Double(billTextfield.text!) ?? 0.0
        let addition = ( bill * tip )
        let calc = (bill + addition) / splitNumber
        total = String(format: "%.2f", calc)
        
        performSegue(withIdentifier: "toResult", sender: sender)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult"
        {
            let destination = segue.destination as! ResultViewController
            destination.result = total
            destination.tip = tip
            destination.split =  splitNumber
        }
            
    }
    
}

