//
//  DisplayGoalViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 8/6/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class DisplayGoalViewController: UIViewController {

    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var desclabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        goalLabel.text = listItemArray[myIndex]
        desclabel.text = desc[myIndex]
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
