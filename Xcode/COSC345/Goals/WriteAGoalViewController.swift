//
//  WriteAGoalViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 5/23/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class WriteAGoalViewController: UIViewController {

    var listWriteVC = ["hi"]
    
    @IBOutlet weak var input: UITextField!
    @IBAction func addGoal(_ sender: Any) {
        
        if(input.text != ""){
            listWriteVC.append(input.text!)
            UserDefaults.standard.set(input.text, forKey: "cell")
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
