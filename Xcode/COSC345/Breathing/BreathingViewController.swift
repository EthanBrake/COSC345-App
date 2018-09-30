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
    @IBAction func infoAlert(_ sender: Any) {
        
        // create the alert
        let alert = UIAlertController(title: "How to use this breathing exercise:", message: "This animation is designed to be used to help calm you down. You can do this by breathing in and out in time with the animation. Try to focus on your breath and forget about everything else.", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Breathing Exercise"
        addPulse()
    }
    
    func addPulse(){ // Creates an animation instance. Could test?
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
