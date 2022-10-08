//
//  calculaterBrain.swift
//  BMI Calculator
//
//  Created by Qurt on 7/7/22.


import UIKit

struct CalculaterBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmivc = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmivc }
    func getAdvice() -> String {
        return bmi?.advice ?? "nill"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.brown
    }
    mutating func calculateBMI(height: Float, weight: Float) {
           let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "fire as a fiddle!", color: UIColor.red)
        }
        else  {
            bmi = BMI(value: bmiValue, advice: "eat less pies", color: UIColor.gray)
        }
    
    }
   
   
     
        }
    

