//
//  MainView.swift
//  IOS-UISlider
//
//  Created by GIS on 7/22/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    var slider: UISlider!
    var lbValue: UILabel!
    
    override func layoutSubviews() {
        
        setUp()
        
    }
    
    func setUp() {
        
        backgroundColor = .white
        setUpView()
        setUpLayout()
        
    }
    
    func setUpView() {
        
        // slider
        slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.minimumTrackTintColor = .blue
        
        // lbValue
        lbValue = UILabel()
        lbValue.text = "0"
        lbValue.font = UIFont.boldSystemFont(ofSize: 35)
        lbValue.textAlignment = .center
        
        // add sub view
        self.addSubview(slider)
        self.addSubview(lbValue)
        
    }
    
    func setUpLayout() {
        
        // slider
        slider.frame = CGRect(x: 0, y: 0, width: self.frame.width - 100, height: 50)
        slider.center = self.center
        
        // lbValue
        lbValue.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        lbValue.center.x = self.center.x
        lbValue.center.y = self.center.y - 100
        
    }
    
}

