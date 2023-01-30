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
    private let offLight = 0.3
    
    private var radiusView: CGFloat {
        redView.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchOff()
        switchButton.layer.cornerRadius = 20
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        redView.layer.cornerRadius = radiusView
        yellowView.layer.cornerRadius = radiusView
        greenView.layer.cornerRadius = radiusView
    }
    
    private func switchOff() {
        redView.alpha = offLight
        yellowView.alpha = offLight
        greenView.alpha = offLight
    }


    
}

