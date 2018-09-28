//
//  ContactUsViewController.swift
//  COSC345
//
//  Created by Nathan Laing on 8/11/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//
import UIKit

class ContactUsViewController: UIViewController {

    @IBAction func usage(_ sender: Any) {
        
        // create the alert
        let alert = UIAlertController(title: "App Usage:", message: "Diary - Keep track of your thoughts.\n\nGoals - Set goals for yourself to try and achieve (eg. 'Talk to a stranger').\n\nRelaxing Image - Choose a relaxing image to zone out / try relax to.\n\nBreathing Exercise - An animation made to do breathing exercises to. More information can be found in the breathing exercise section.\n\nContact Us - (the page you are on). This page has the app use info and a link to our Facebook group.\n\nInformation - A collection of weblinks to helpful information about Social Anxiety.", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
