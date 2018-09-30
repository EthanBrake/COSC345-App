//
//  JournalViewController.swift
//  COSC345
//
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

var editDataArray: [String] = Array()

class JournalViewController: UIViewController {
    
    @IBOutlet weak var journalLabel: UILabel!
    @IBOutlet weak var journalinput: UITextField!
    @IBAction func JournalNewEntry(_ sender: AnyObject) {
        journalinput.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        journalLabel.text = list[myrowIndex]
    }
}
