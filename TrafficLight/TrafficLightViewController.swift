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
    
    private let onLight = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchOff()
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
    
    private func switchOff() {
        let offLight = 0.3
        
        redView.alpha = offLight
        yellowView.alpha = offLight
        greenView.alpha = offLight
    }


    
}

