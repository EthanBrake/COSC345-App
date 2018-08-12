//
//  FacebookViewController.swift
//  COSC345
//
//  Created by Nathan Laing on 8/11/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit
import WebKit

class FacebookViewController: UIViewController {
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
        
        let url = URL(string: "https://www.facebook.com/groups/2136889883304300/")!
        let request = URLRequest(url: url)
        webview.load(request)
    }
}
