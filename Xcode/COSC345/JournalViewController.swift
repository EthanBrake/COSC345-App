//
//  JournalViewController.swift
//  COSC345
//
//  Created by Robert Giles on 8/12/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

var journallist: [String] = []
var myJournalIndex = 0

class JournalViewController: UIViewController {
    
    
    @IBOutlet weak var journalinput: UITextField!
    
    @IBOutlet weak var DisplayField: UITextView!
    
    @IBAction func JournalNewEntry(_ sender: AnyObject) {
        
        journalinput.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DisplayField.text = journallist[myJournalIndex]
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //storing app data
    func storeData(){
        defaultss?.set(journallist, forKey: "savedJournalData")
        defaultss?.synchronize()
    }
    
    
    //getting app data
    func getData(){
        let data = defaultss?.value(forKey: "savedJournalData")
        if data != nil {
            journallist = data as! [String]
        } else{
            
        }
    }
}
