//
//  ViewController.swift
//  TrafficLight
//
//  Created by Дмитрий Лубов on 30.01.2023.
//

import UIKit

final class TrafficLightViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchOffLight()
        switchButton.layer.cornerRadius = 20
    }
    
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        setRadiusViews()
    }
    
    private func setRadiusViews() {
        let radius = redView.frame.width / 2
        
        redView.layer.cornerRadius = radius
        yellowView.layer.cornerRadius = radius
        greenView.layer.cornerRadius = radius
    }
    
    private func switchOffLight() {
        let offLight = 0.3
        
        redView.alpha = offLight
        yellowView.alpha = offLight
        greenView.alpha = offLight
    }

    @IBAction func switchButtonDidTapped() {
        let onLight = 1.0
        
        if redView.alpha == onLight {
            switchOffLight()
            yellowView.alpha = onLight
        } else if yellowView.alpha == onLight {
            switchOffLight()
            greenView.alpha = onLight
        } else {
            switchOffLight()
            redView.alpha = onLight
        }
        
        switchButton.setTitle("NEXT", for: .normal)
    }
    
    
}

