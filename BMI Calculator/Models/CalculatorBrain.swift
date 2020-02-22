//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jason on 2/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiVal = weight / (height * height)
        if bmiVal < 18.5 {
            bmi = BMI(value: bmiVal, advice: "Eat More", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            
        }
        else if bmiVal < 24.9{
            bmi = BMI(value: bmiVal, advice: "Fit as Fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiVal, advice: "Eat less, Exercise more", color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        }
    }
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format : "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Enter you weight and height."
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
}
