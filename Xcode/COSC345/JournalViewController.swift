//
//  JournalViewController.swift
//  COSC345
//
//  Created by Robert Giles on 8/12/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

var editDataArray: [String] = Array()

class JournalViewController: UIViewController {
    
    
    @IBOutlet weak var journalLabel: UILabel!
    
    @IBOutlet weak var testText: UITextField!
    
    @IBOutlet weak var journalinput: UITextField!
    
    
    @IBAction func JournalNewEntry(_ sender: AnyObject) {
        
        journalinput.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        journalLabel.text = list[myrowIndex]
        testText.text = list[myrowIndex]
        
       // DisplayField.text = journallist[myJournalIndex]
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //storing app data
    func storeData(){
        defaultss?.set(editDataArray, forKey: "savedJournalData")
        defaultss?.synchronize()
    }
    
    
    //getting app data
    func getData(){
        let data = defaultss?.value(forKey: "savedJournalData")
        if data != nil {
            editDataArray = data as! [String]
        } else{
            
        }
    }
}
