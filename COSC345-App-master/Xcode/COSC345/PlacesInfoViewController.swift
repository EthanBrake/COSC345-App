//
//  PlacesInfoViewController.swift
//  COSC345
//
//  Created by Nathan Laing on 5/20/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit
import WebKit

class PlacesInfoViewController: UIViewController {

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
        
        let url = URL(string: "https://1737.org.nz/?gclid=Cj0KCQjwlv_XBRDrARIsAH-iRJTOK16cGPpTAjuFc5RM4D2ZAaaFCn7X86F47Z6d5cByVzpr1iHGO-4aAkYgEALw_wcB")!
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
