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
        mainDisplay.backgroundColor = .green; mainDisplay.backgroundColor = mainDisplay.backgroundColor?.withAlphaComponent(currentGreenValue)
           
        
    }
    
    @IBAction func sliderBlueAction() {
        let currentBlueValue = CGFloat (sliderBlue.value)
        blueValue.text = String(format:"%.2f", sliderBlue.value)
        mainDisplay.backgroundColor = .blue; mainDisplay.backgroundColor = mainDisplay.backgroundColor?.withAlphaComponent(currentBlueValue)
      
    }
   
    
}

