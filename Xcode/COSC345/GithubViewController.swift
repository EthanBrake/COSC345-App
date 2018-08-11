//
//  GithubViewController.swift
//  COSC345
//
//  Created by Nathan Laing on 8/11/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit
import WebKit

class GithubViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let url = URL(string: "https://github.com/EthanBrake/COSC345-App")!
        let request = URLRequest(url: url)
        
        webview.load(request)
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
