//
//  WebViewVC.swift
//  COSC345
//
// This is going to be the overarching class for all the webpages.
//
//  Created by Nathan Laing on 9/25/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class WebViewVC: UIViewController {
    static var myURL = "https://www.google.com"
    
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() { // Could test all segue=>url's
        super.viewDidLoad()

        let myURL = URL(string: WebViewVC.myURL)!
        let request = URLRequest(url: myURL)
        webview.load(request)
    }
}
