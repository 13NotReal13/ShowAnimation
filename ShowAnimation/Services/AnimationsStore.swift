//
//  AnimationsStore.swift
//  ShowAnimation
//
//  Created by Иван Семикин on 12/03/2024.
//

import SpringAnimation

struct AnimationsStore {
    var animations = AnimationPreset.allCases
    var curves = AnimationCurve.allCases
}
