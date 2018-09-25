//
//  ImprovingSkillsInfoViewController.swift
//  COSC345
//
//  Created by Nathan Laing on 5/20/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit
import WebKit

class ImprovingSkillsInfoViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView! // Setting up our webview for the page we are moving to.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Giving the webview the URL we want to lead and then loading it.
        let url = URL(string: "https://www.improveyoursocialskills.com/basic-social-skills-guide")!
        let request = URLRequest(url: url)
        webview.load(request)
    }
}
