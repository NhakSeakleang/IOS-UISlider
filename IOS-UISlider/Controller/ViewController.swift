//
//  ViewController.swift
//  IOS-UISlider
//
//  Created by GIS on 7/22/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var mainView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
    }
    
    override func viewDidLayoutSubviews() {
        
        setUpEvent()
        
    }
    
    func setUp() {
        
        setUpView()
        
    }
    
    func setUpView() {
        
        mainView = MainView()
        self.view = mainView
        
    }
    
    func setUpEvent() {
        
        // slider
        mainView.slider.addTarget(self, action: #selector(sliderWithStepValueChange(_:)), for: .valueChanged)
        
    }
    
    @objc func sliderValueChange(_ slider: UISlider) {
        
        print("Stepper Value: \(slider.value)")
        mainView.lbValue.text = "\(Int(slider.value))"
        
    }
    
    @objc func sliderWithStepValueChange(_ slider: UISlider) {
        
        let step: Float = 1
        let interval: Float = step / 2
        
        slider.setValue((Float)((Int)((slider.value + interval) / step) * Int(step)), animated: false)
        print("Stepper Value: \(slider.value)")
        mainView.lbValue.text = "\(Int(slider.value))"
        
    }
    
}
