//
//  HomeViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 3/23/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clickDiaryVC(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "DiaryViewController")as!DiaryViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func clickGoalsVC(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = storyboard.instantiateViewController(withIdentifier: "GoalsViewController")as!GoalsViewController
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    @IBAction func clickBreathingVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let forthVC = storyboard.instantiateViewController(withIdentifier: "BreathingViewController")as!BreathingViewController
        self.navigationController?.pushViewController(forthVC, animated: true)
    }
    
    @IBAction func clickInformationVC(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let fifthVC = storyboard.instantiateViewController(withIdentifier: "InformationViewController")as!InformationViewController
        self.navigationController?.pushViewController(fifthVC, animated: true)
    }
}
