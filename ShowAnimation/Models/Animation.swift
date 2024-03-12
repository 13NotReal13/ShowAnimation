//
//  Animation.swift
//  ShowAnimation
//
//  Created by Иван Семикин on 12/03/2024.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let store = AnimationsStore()
        let randomNumber = Double.random(in: 1.00...1.40)
        
        return Animation(
            preset: store.animations.randomElement()?.rawValue ?? "",
            curve: store.curves.randomElement()?.rawValue ?? "",
            force: randomNumber,
            duration: randomNumber,
            delay: 0.3
        )
    }
}
