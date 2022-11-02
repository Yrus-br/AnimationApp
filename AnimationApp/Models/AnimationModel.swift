//
//  AnimationModel.swift
//  SpringAnimation
//
//  Created by Jorgen Shiller on 02.11.2022.
//

struct AnimationModel {
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimationData() -> [AnimationModel] {
        
        var animations: [AnimationModel] = []
        
        let preset = DataManager.shared.preset
        let curve = DataManager.shared.curve
        let force = DataManager.shared.force
        let duration = DataManager.shared.duration
        let delay = DataManager.shared.delay
        
        for index in 0..<preset.count {
            let animation = AnimationModel(
                animation: preset[index],
                curve: curve[index],
                force: force[Int.random(in: 0..<force.count)],
                duration: duration[Int.random(in: 0..<duration.count)],
                delay: delay[Int.random(in: 0..<delay.count)]
            )
            animations.append(animation)
        }
        return animations
    }
}
