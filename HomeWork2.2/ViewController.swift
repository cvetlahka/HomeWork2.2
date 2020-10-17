//
//  ViewController.swift
//  HomeWork2.2
//
//  Created by Светлана Сафонова on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var mainDisplay: UIView!
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.value = 0.5
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1

        redValue.text = String(sliderRed.value)
        greenValue.text = String(sliderGreen.value)
        blueValue.text = String(sliderBlue.value)
    }

    @IBAction func sliderRedAction() {
        redValue.text = String(format:"%.2f", sliderRed.value)
    }
    
    @IBAction func sliderGreenAction() {
        greenValue.text = String(format:"%.2f", sliderGreen.value)
    }
    
    @IBAction func sliderBlueAction() {
        blueValue.text = String(format:"%.2f", sliderBlue.value)
    }
}

