//
//  AnimationModel.swift
//  SpringAnimation
//
//  Created by Jorgen Shiller on 02.11.2022.
//

struct Animation: Codable {
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimationData() -> [Animation] {
        
        var animations: [Animation] = []
        
        let preset = DataManager.shared.preset
        let curve = DataManager.shared.curve
        
        for index in 0..<preset.count {
            let animation = Animation(
                animation: preset[index],
                curve: curve[index],
                force: Double.random(in: 0.5...1),
                duration: Double.random(in: 0.5...1),
                delay: Double.random(in: 0.5...1)
            )
            animations.append(animation)
        }
        return animations
    }
}
