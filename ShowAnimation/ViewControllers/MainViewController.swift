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
    @IBOutlet var detailsLabels: [UILabel]!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }

    @IBAction func runSpringAnimation(_ sender: UIButton) {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        setLabels()
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func setLabels() {
        detailsLabels[0].text = "preset: \(animation.preset)"
        detailsLabels[1].text = "curve: \(animation.curve)"
        detailsLabels[2].text = "force: \(String(format: "%.2f", animation.force))"
        detailsLabels[3].text = "duration: \(String(format: "%.2f", animation.duration))"
        detailsLabels[4].text = "delay: \(String(format: "%.2f", animation.delay))"
    }
}

