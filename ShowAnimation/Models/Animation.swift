//
//  Animation.swift
//  ShowAnimation
//
//  Created by Иван Семикин on 12/03/2024.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        let store = DataStore.shared
        
        return Animation(
            preset: store.animations.randomElement()?.rawValue ?? "wobble",
            curve: store.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1.00...1.40),
            duration: Double.random(in: 1.00...1.40),
            delay: 0.3
        )
    }
}
