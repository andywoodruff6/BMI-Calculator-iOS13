//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Andy W on 1/27/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(h: Float, w: Float) {
        let bmiValue = w / (h * h)
        if bmiValue <= 18.5 {
            print("underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more chicken.", color: UIColor.systemBlue)
        } else if bmiValue <= 24.9 {
            print("Normal")
            bmi = BMI(value: bmiValue, advice: "Perfect!", color: UIColor.systemGreen)
        } else  {
            print("Overweight")
            bmi = BMI(value: bmiValue, advice: "Lay off the pies.", color: UIColor.systemRed)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
