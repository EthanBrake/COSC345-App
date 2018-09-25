//
//  ViewGoalsViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 8/7/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class ViewGoalsViewController: UIViewController {

    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goalLabel.text = listItemArray[myIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
}
