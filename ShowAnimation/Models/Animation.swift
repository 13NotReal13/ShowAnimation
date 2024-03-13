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
    
    static func getAnimation() -> Animation {
        let store = AnimationsStore()
        
        return Animation(
            preset: store.animations.randomElement()?.rawValue ?? "",
            curve: store.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1.00...1.40),
            duration: Double.random(in: 1.00...1.40),
            delay: 0.3
        )
    }
}
