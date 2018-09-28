//
//  InformationViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 3/23/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Information"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // Could test from WebView clicking/setting segue then XCTAssert URL
        if segue.identifier == "socialskills" {
            WebViewVC.myURL = "https://www.improveyoursocialskills.com/basic-social-skills-guide"
        }else if segue.identifier == "livingwith" {
            WebViewVC.myURL = "http://www.anxiety.org.nz"
        }
        else if segue.identifier == "fb" {
            WebViewVC.myURL = "https://www.facebook.com/groups/2136889883304300"
        }
        else if segue.identifier == "more" {
            WebViewVC.myURL = "https://www.healthnavigator.org.nz/health-a-z/s/social-phobia/"
        }
        else if segue.identifier == "help" {
            WebViewVC.myURL = "https://1737.org.nz/?gclid=Cj0KCQjwlv_XBRDrARIsAH-iRJTOK16cGPpTAjuFc5RM4D2ZAaaFCn7X86F47Z6d5cByVzpr1iHGO-4aAkYgEALw_wcB"
        }
        else if segue.identifier == "whatis" {
            WebViewVC.myURL = "https://en.wikipedia.org/wiki/Social_anxiety_disorder"
        }
    }
}
