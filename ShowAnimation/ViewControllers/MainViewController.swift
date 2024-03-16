//
//  MainViewController.swift
//  ShowAnimation
//
//  Created by Иван Семикин on 12/03/2024.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }

    @IBAction func runSpringAnimation(_ sender: UIButton) {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        animationLabel.text = animation.description
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

