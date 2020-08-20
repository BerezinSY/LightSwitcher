//
//  ViewController.swift
//  LightSwitcher
//
//  Created by Stanislav BEREZIN on 20.08.2020.
//  Copyright © 2020 Stanislav BEREZIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Light outlets
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    // MARK: Button outlets
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        view.backgroundColor = .black
        configureLightViews()
        setStartAlpha()
    }
    
    // MARK: Button actions
    @IBAction func pressButton(_ sender: UIButton) {
        switchButton()
    }
    
    // MARK: Configuration
    private func configureLightViews() {
        let height = redLightView.layer.frame.size.height
        redLightView.layer.cornerRadius = height / 2
        yellowLightView.layer.cornerRadius = height / 2
        greenLightView.layer.cornerRadius = height / 2
    }
    
    private func setStartAlpha() {
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    // MARK: Switch logic
    private func switchButton() {
        button.setTitle("Next", for: .normal)
        switchLight()
    }
    
    private func switchLight() {
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else {
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        }
    }
}



