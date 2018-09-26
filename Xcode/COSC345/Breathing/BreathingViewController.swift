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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Breathing Exercise"
        addPulse()
    }
    
    func addPulse(){ // Creates an animation instance
        let pulse = pulsing(radius: 160, position: avatarImageView.center)
        pulse.animationDuration = 3.5
        pulse.backgroundColor = UIColor.blue.cgColor
        self.view.layer.insertSublayer(pulse, below: avatarImageView.layer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
