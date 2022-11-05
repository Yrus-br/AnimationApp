//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Jorgen Shiller on 02.11.2022.
//

import SpringAnimation

class DataManager {
    
    static let shared = DataManager()
    
    let preset = AnimationPreset.allCases
    
    
    let curve = AnimationCurve.allCases
    
    private init() {}
}
