//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Jorgen Shiller on 02.11.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var AnimationView: SpringView!
    
    @IBOutlet var labelWithValue: UILabel! {
        didSet {
            labelWithValue.text = currentAnimation.description
        }
    }
    
    private var currentAnimation = Animation.getRandomAnimation()
    
    @IBAction func ButtonForAnimation(_ sender: UIButton) {
        labelWithValue.text = currentAnimation.description
        
        AnimationView.animation = currentAnimation.animation
        AnimationView.curve = currentAnimation.curve
        AnimationView.force = currentAnimation.force
        AnimationView.duration = currentAnimation.duration
        AnimationView.delay = AnimationView.delay
        AnimationView.animate()

        currentAnimation = Animation.getRandomAnimation()
        sender.setTitle("Run \(currentAnimation.animation)", for: .normal)
    }
}

