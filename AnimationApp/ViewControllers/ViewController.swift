//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Jorgen Shiller on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var AnimationView: SpringView!
    
    @IBOutlet var presetValue: UILabel!
    @IBOutlet var curveValue: UILabel!
    @IBOutlet var forceValue: UILabel!
    @IBOutlet var durationValue: UILabel!
    @IBOutlet var delayValue: UILabel!
    
    let currentAnimation = AnimationModel.getAnimationData()
    private var randomIndex = 0
    
    @IBAction func ButtonForAnimation(_ sender: SpringButton) {
        AnimationView.animation = currentAnimation[randomIndex].animation
        AnimationView.curve = currentAnimation[randomIndex].curve
        AnimationView.force = currentAnimation[randomIndex].force
        AnimationView.duration = currentAnimation[randomIndex].duration
        AnimationView.delay = currentAnimation[randomIndex].delay
        AnimationView.animate()

        randomIndex = Int.random(in: 0..<currentAnimation.count)
        
        sender.setTitle("Run \(currentAnimation[randomIndex].animation)", for: .normal)
        presetValue.text = "\(AnimationView.animation)"
        curveValue.text = "\(AnimationView.curve)"
        forceValue.text = "\(AnimationView.force)"
        durationValue.text = "\(AnimationView.duration)"
        delayValue.text = "\(AnimationView.delay)"
    }
}

