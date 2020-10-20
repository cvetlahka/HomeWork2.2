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
        
        mainDisplay.layer.cornerRadius = 10
       
        redValue.text = String(format:"%.2f", sliderRed.value)
        greenValue.text = String(format:"%.2f", sliderGreen.value)
        blueValue.text = String(format:"%.2f", sliderBlue.value)
        
        mainDisplay.backgroundColor = UIColor(
            red: CGFloat (sliderRed.value),
            green: CGFloat (sliderGreen.value),
            blue: CGFloat (sliderBlue.value),
        alpha: 1)
        
    }

    @IBAction func sliderRedAction() {  
        redValue.text = String(format:"%.2f", sliderRed.value)
        mainDisplay.backgroundColor = UIColor(
            red: CGFloat (sliderRed.value),
            green: CGFloat (sliderGreen.value),
            blue: CGFloat (sliderBlue.value),
        alpha: 1)
      
    }
    
    @IBAction func sliderGreenAction() {
      
        greenValue.text = String(format:"%.2f", sliderGreen.value)
        mainDisplay.backgroundColor = UIColor(
            red: CGFloat (sliderRed.value),
            green: CGFloat (sliderGreen.value),
            blue: CGFloat (sliderBlue.value),
        alpha: 1)
    }
    
    @IBAction func sliderBlueAction() {
       
        blueValue.text = String(format:"%.2f", sliderBlue.value)
        mainDisplay.backgroundColor = UIColor(
            red: CGFloat (sliderRed.value),
            green: CGFloat (sliderGreen.value),
            blue: CGFloat (sliderBlue.value),
        alpha: 1)
    }
}

