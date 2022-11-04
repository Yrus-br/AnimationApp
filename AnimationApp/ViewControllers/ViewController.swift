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
    
    @IBOutlet var labelWithValue: UILabel!
    
    let currentAnimation = Animation.getAnimationData()
    
    @IBAction func ButtonForAnimation(_ sender: SpringButton) {
        
        AnimationView.animate()

        
        sender.setTitle("Run \(currentAnimation.animation)", for: .normal)
        labelWithValue.text = "\(AnimationView.animation)"
    }
}

