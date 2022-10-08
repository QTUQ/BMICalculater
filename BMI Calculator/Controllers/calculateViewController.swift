//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.


import UIKit

class calculateViewController: UIViewController {

    @IBOutlet weak var hightLable: UILabel!
    
    @IBOutlet weak var wightLable: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
 var calculatorBrain = CalculaterBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        hightLable.text = "\(height)m"
        
       
    }
    
    @IBAction func wightSliderChange(_ sender: UISlider) {
        wightLable.text = String(format: "%.0fkg", sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationvc = segue.destination as! ResultViewController
            destinationvc.bmiValue = calculatorBrain.getBMIValue()
            destinationvc.advice = calculatorBrain.getAdvice()
            destinationvc.color = calculatorBrain.getColor()
            
        }
    }
}

