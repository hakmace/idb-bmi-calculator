//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = round(sender.value * 100) / 100
        heightLabel.text = String(height) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text = String(weight) + "Kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = Float(heightSlider.value)
        let weight = Float(weightSlider.value)
        let bmi = weight / pow(height, 2)
        print(bmi)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(bmi)
        self.present(secondVC, animated: true, completion: nil)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

