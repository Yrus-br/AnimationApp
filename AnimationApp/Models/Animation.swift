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
    
    var description: String {
"""
preset: \(animation)
curve: \(curve)
force: \(String(format: "%.02F", force))
duration: \(String(format: "%.02F", duration))
delay: \(String(format: "%.02F", delay))
"""
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            animation: DataManager.shared.preset.randomElement()?.rawValue ?? "slideRight",
            curve: DataManager.shared.curve.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0.5...1),
            duration: Double.random(in: 0.5...1),
            delay: Double.random(in: 0.1...0.3)
        )
    }
}
