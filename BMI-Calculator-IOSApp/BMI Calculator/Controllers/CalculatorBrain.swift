//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bilge Çakar on 8.03.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class CalculatorBrain
{
    var bmiValue : Bmi?
 
    
    init()
    {
        
    }
    
    func getAdvice() -> String
    {
        return bmiValue?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor
    {
        return bmiValue?.color ?? UIColor.white
    }
 
    func getBmiValue() -> String
    {
        if let safeBmi = bmiValue?.value
        {
            let result = String(format: "%.2f", safeBmi)
            return result
        }else
        {
            return "0.0"
        }
        
    }
    
    func calculateBmi(height : Float, weight : Float)
    {
        let bmi = weight / pow(height, 2)
        
        if bmi < 18.5
        {
            bmiValue = Bmi(value: bmi, advice: "Eat more pies!", color: UIColor.blue)
            
        }else if bmi < 24.9
        {
            bmiValue = Bmi(value: bmi, advice: "Fit as a fiddle!", color: UIColor.green)
        }else
        {
            bmiValue = Bmi(value: bmi, advice: "Eat less pies!", color: UIColor.red)
        }
        
    
        
    }
}
