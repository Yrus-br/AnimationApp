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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func ButtonForAnimation(_ sender: SpringButton) {
        AnimationView.animation = "shake"
        AnimationView.curve = "easyOut"
        AnimationView.force = 2
        AnimationView.duration = 2
        AnimationView.delay = 0
        AnimationView.animate()
        
        presetValue.text = "\(AnimationView.animation)"
        curveValue.text = "\(AnimationView.curve)"
        forceValue.text = "\(AnimationView.force)"
        durationValue.text = "\(AnimationView.duration)"
        delayValue.text = "\(AnimationView.delay)"
        
    }
}

