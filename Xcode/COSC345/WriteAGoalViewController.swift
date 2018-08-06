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

        // Do any additional setup after loading the view.
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
