//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Yazan Almatar on 21/08/2019.
//  Copyright © 2020 Yazan Almatar. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue:String?
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)M"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height =  heightSlider.value
        let weight =  weightSlider.value
        let bmi = weight / (height * height)
        bmiValue = String(format:"%.1f",bmi)
        print(bmi)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
        }
    }
}

