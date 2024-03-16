//
//  AnimationsStore.swift
//  ShowAnimation
//
//  Created by Иван Семикин on 12/03/2024.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
