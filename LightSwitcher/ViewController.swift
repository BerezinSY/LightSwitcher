//
//  ViewController.swift
//  LightSwitcher
//
//  Created by Stanislav BEREZIN on 20.08.2020.
//  Copyright © 2020 Stanislav BEREZIN. All rights reserved.
//

import UIKit

enum Colors {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    // MARK: Light outlets
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    // MARK: Button outlets
    @IBOutlet weak var button: UIButton!
    
    var color = Colors.red
    var light: CGFloat = 1
    var dark: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        view.backgroundColor = .black
        configureLightViews()
    }
    
    // MARK: Button actions
    @IBAction func pressButton(_ sender: UIButton) {
        switchButton()
    }
    
    // MARK: Configuration
    private func configureLightViews() {
        let height = redLightView.layer.frame.height
        redLightView.layer.cornerRadius = height / 2
        yellowLightView.layer.cornerRadius = height / 2
        greenLightView.layer.cornerRadius = height / 2
    }
    
    // MARK: Switch logic
    private func switchButton() {
        button.setTitle("Next", for: .normal)
        switchLight()
    }
    
    private func switchLight() {
        switch color {
        case .red:
            redLightView.alpha = light
            greenLightView.alpha = dark
            color = .yellow
        case .yellow:
            yellowLightView.alpha = light
            redLightView.alpha = dark
            color = .green
        case .green:
            greenLightView.alpha = light
            yellowLightView.alpha = dark
            color = .red
        }
    }
}



