//
//  ViewGoalsViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 8/7/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class ViewGoalsViewController: UIViewController, buttonPressDelegate{
    
    func buttonPressed() {
        secondButton.alpha = 0
    }
    
    var buttonPressDelegateObj: buttonPressDelegate?
    
    @IBOutlet weak var secondButton: UIButton!
    
    @IBAction func secondBtnClicked(_ sender: Any) {
        if (buttonPressDelegateObj != nil) {
            buttonPressDelegateObj?.buttonPressed()
        }
        else {
            print("You forgot to set your reference in buttonPressDelegateObj to contain an instance of secondViewController!")
        }
    }
    
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goalLabel.text = listItemArray[myIndex]
        
        buttonPressDelegateObj = TableViewCellGoal() as? buttonPressDelegate
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
}
