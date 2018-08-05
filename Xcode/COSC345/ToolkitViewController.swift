//
//  ForthViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 3/27/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

@objcMembers class ForthViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tool-Kit"
        
        avatarImageView.isUserInteractionEnabled = true
        let tapGestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(ForthViewController.addPulse))
        
        tapGestureRecogniser.numberOfTapsRequired = 1
        startButton.addGestureRecognizer(tapGestureRecogniser)

        // Do any additional setup after loading the view.
    }
    
    func addPulse(){
        let pulse = pulsing(radius: 160, position: avatarImageView.center)
        pulse.animationDuration = 3
        pulse.backgroundColor = UIColor.blue.cgColor
        self.view.layer.insertSublayer(pulse, below: avatarImageView.layer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
