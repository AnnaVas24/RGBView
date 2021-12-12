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
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redColorLabel.text = String(redSlider.value)
        greenColorLabel.text = String(greenSlider.value)
        blueColorLabel.text = String(blueSlider.value)
        
        setupColor()
    }

    override func viewWillLayoutSubviews() {
        mainView.layer.cornerRadius = 30
    }
   
    private func setupColor() {
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        
        mainView.backgroundColor = UIColor(red: redSliderValue,
                                           green: greenSliderValue,
                                           blue: blueSliderValue,
                                           alpha: 1)
    }
    @IBAction func redSliderAction() {
        redColorLabel.text = String(round(100 * redSlider.value)/100)
        setupColor()
    }
    
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(round(100 * greenSlider.value)/100)
        setupColor()
    }
    
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(round(100 * blueSlider.value)/100)
        setupColor()
    }
    
}

