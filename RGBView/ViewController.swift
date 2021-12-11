//
//  ViewController.swift
//  RGBView
//
//  Created by Vasichko Anna on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 0.00
        greenSlider.value = 0.00
        blueSlider.value = 0.00
        
        redSlider.minimumValue = 0.00
        greenSlider.minimumValue = 0.00
        blueSlider.minimumValue = 0.00
        redSlider.maximumValue = 1
        greenSlider.maximumValue = 1
        blueSlider.maximumValue = 1
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redColorLabel.text = String(redSlider.value)
        greenColorLabel.text = String(greenSlider.value)
        blueColorLabel.text = String(blueSlider.value)
    }

    override func viewWillLayoutSubviews() {
        mainView.layer.cornerRadius = 30
    }

    @IBAction func redSliderAction() {
        redColorLabel.text = String(round(100 * redSlider.value)/100)
    }
    
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(round(100 * greenSlider.value)/100)
    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(round(100 * blueSlider.value)/100)
    }
}

