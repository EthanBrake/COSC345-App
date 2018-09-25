//
//  WebViewClass.swift
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

class WebViewClass: UIViewController {

    @IBOutlet weak var webview: WKWebView! // This should be set up in the view controller and then given to the class initialiser along with the url.
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
        
        let url = URL(string: "https://1737.org.nz/?gclid=Cj0KCQjwlv_XBRDrARIsAH-iRJTOK16cGPpTAjuFc5RM4D2ZAaaFCn7X86F47Z6d5cByVzpr1iHGO-4aAkYgEALw_wcB")! // This will be a parameter to the initialiser
        let request = URLRequest(url: url)
        webview.load(request)
    }
}
