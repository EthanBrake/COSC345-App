//
//  BreathingViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 3/27/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

@objcMembers class BreathingViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Breathing Exercise"
        
        avatarImageView.isUserInteractionEnabled = true
        let tapGestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(BreathingViewController.addPulse))
        let stopTapGestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(BreathingViewController.stopAnimation))
        
        tapGestureRecogniser.numberOfTapsRequired = 1
        startButton.addGestureRecognizer(tapGestureRecogniser)
        
        stopTapGestureRecogniser.numberOfTapsRequired = 1
        // Do any additional setup after loading the view.
    }
    
    func stopAnimation(){ // Stop button animation code will go here.
        
    }
    
    func addPulse(){ // Creates an animation instance
        let pulse = pulsing(radius: 160, position: avatarImageView.center)
        pulse.animationDuration = 4
        pulse.backgroundColor = UIColor.blue.cgColor
        self.view.layer.insertSublayer(pulse, below: avatarImageView.layer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
