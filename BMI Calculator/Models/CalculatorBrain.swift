//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Yazan Almatar on 4/24/20.
//  Copyright © 2020 Yazan Almatar. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi:BMI?
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue  = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
           bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else if bmiValue > 24.0 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
    func getBMIValue() -> String {
        let bmiValueFormatted = String(format:"%.1f",bmi?.value ?? 0.0)
        return bmiValueFormatted
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}

