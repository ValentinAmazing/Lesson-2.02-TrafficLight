//
//  ViewController.swift
//  Lesson 2.02 TrafficLight
//
//  Created by Valentin on 26.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var switchBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViews(redLightView, color: .red)
        initViews(yellowLightView, color: .yellow)
        initViews(greenLightView, color: .green)

        switchBtn.backgroundColor = .systemBlue
        switchBtn.layer.cornerRadius = 11
    }

    @IBAction func switchBtn(_ sender: UIButton) {
        let alpha03: CGFloat = 0.3
        let alpha1: CGFloat = 1
        
        if redLightView.alpha == alpha1 {
            redLightView.alpha = alpha03
            yellowLightView.alpha = alpha1
        } else if yellowLightView.alpha == alpha1 {
            yellowLightView.alpha = alpha03
            greenLightView.alpha = alpha1
        } else if greenLightView.alpha == alpha1 {
            greenLightView.alpha = alpha03
            redLightView.alpha = alpha1
        } else {
            sender.setTitle("NEXT", for: .normal)
            redLightView.alpha = alpha1
        }
    }
    
}

func initViews(_ view: UIView, color: UIColor) {
    view.backgroundColor = color
    view.alpha = 0.3
    view.layer.cornerRadius = view.frame.height / 2
}
