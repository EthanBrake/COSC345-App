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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func writeAGoalVC(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let toWriteAGoal = storyboard.instantiateViewController(withIdentifier: "WriteAGoalViewController")as!WriteAGoalViewController
        self.navigationController?.pushViewController(toWriteAGoal, animated: true)
    }
    
    @IBAction func whatIsAGoalVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let toWhatisGoal = storyboard.instantiateViewController(withIdentifier: "WhatisAGoalViewController")as!WhatisAGoalViewController
        self.navigationController?.pushViewController(toWhatisGoal, animated: true )
    }
    
    @IBAction func toReviewVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let toReviewGoal = storyboard.instantiateViewController(withIdentifier: "ReviewMyGoalsViewController")as!ReviewMyGoalsViewController
        self.navigationController?.pushViewController(toReviewGoal, animated: true)
    }
   
    @IBAction func CurrentGoalsVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let toCurrentGoal = storyboard.instantiateViewController(withIdentifier: "CurrentGoalsViewController")as!CurrentGoalsViewController
        self.navigationController?.pushViewController(toCurrentGoal, animated: true)
    }
       
    @IBAction func toTableViewGoal(_ sender: Any) {
        self.performSegue(withIdentifier: "toTableViewGoalSegue", sender: self)
    }
}
