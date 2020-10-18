//
//  ViewController.swift
//  HomeWork2.2
//
//  Created by Светлана Сафонова on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var mainDisplayThree: UIView!
    @IBOutlet var mainDisplayTwo: UIView!
    @IBOutlet var mainDisplay: UIView!
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainDisplay.layer.cornerRadius = 10
        mainDisplayTwo.layer.cornerRadius = 10
        mainDisplayThree.layer.cornerRadius = 10
        
        
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.value = 0.5
        
        
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.value = 0.5
        
        
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.value = 0.5
        
        redValue.text = String(format:"%.2f", sliderRed.value)
        greenValue.text = String(format:"%.2f", sliderGreen.value)
        blueValue.text = String(format:"%.2f", sliderBlue.value)
    }

    @IBAction func sliderRedAction() {
        let currentRedValue = CGFloat (sliderRed.value)
        redValue.text = String(format:"%.2f", sliderRed.value)
        mainDisplay.backgroundColor = .red; mainDisplay.backgroundColor = mainDisplay.backgroundColor?.withAlphaComponent(currentRedValue)
    }
    
    @IBAction func sliderGreenAction() {
        let currentGreenValue = CGFloat (sliderGreen.value)
        greenValue.text = String(format:"%.2f", sliderGreen.value)
        mainDisplayTwo.backgroundColor = .green; mainDisplayTwo.backgroundColor = mainDisplayTwo.backgroundColor?.withAlphaComponent(currentGreenValue)
    }
    
    @IBAction func sliderBlueAction() {
        let currentBlueValue = CGFloat (sliderBlue.value)
        blueValue.text = String(format:"%.2f", sliderBlue.value)
        mainDisplayThree.backgroundColor = .blue; mainDisplayThree.backgroundColor = mainDisplayThree.backgroundColor?.withAlphaComponent(currentBlueValue)
    }
}

