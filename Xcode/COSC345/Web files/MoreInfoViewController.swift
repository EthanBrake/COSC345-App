//
//  MoreInfoViewController.swift
//  COSC345
//
//  Created by Nathan Laing on 5/20/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit
import WebKit

class MoreInfoViewController: UIViewController {
    @IBOutlet weak var webview: WKWebView!
    
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
        
        let url = URL(string: "https://www.healthnavigator.org.nz/health-a-z/s/social-phobia/")!
        let request = URLRequest(url: url)
        webview.load(request)
    }
}
