//
//  ThirdViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 3/23/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class GoalsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "My Goals"
    }
    
    @IBAction func whatIsAGoalVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let toWhatisGoal = storyboard.instantiateViewController(withIdentifier: "WhatisAGoalViewController")as!WhatisAGoalViewController
        self.navigationController?.pushViewController(toWhatisGoal, animated: true )
    }
       
    @IBAction func toTableViewGoal(_ sender: Any) {
        self.performSegue(withIdentifier: "toTableViewGoalSegue", sender: self)
    }
}
