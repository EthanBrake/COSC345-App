//
//  JournalViewController.swift
//  COSC345
//
//  Created by Robert Giles on 8/12/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class JournalViewController: UIViewController {
    
    let listUserDefault = UserDefaults.standard
    
    @IBOutlet weak var outputText: UITextView!
    
    @IBOutlet weak var inputJournal: UITextField!
    
    @IBAction func inputJournal(_ sender: Any) {
        if(inputJournal.text != ""){
            outputText.text = inputJournal.text
            inputJournal.text = ""
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
