//
//  ViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 3/23/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
// ? means it's an optional value
// ! means it contains a value

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //This function applies a button function to the Second VC from the MainVC
    @IBAction func clickSecondVC(_ sender: AnyObject) {
        // Creates a constant variable using storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // SecondViewController constant variable for nav
        let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController")as!
            SecondViewController
        //This pushes the VC by using Nav controller
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    //This function applies a button to the Third VC from the MainVC
    @IBAction func clickThirdVC(_ sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let thirdVC = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")as!
            ThirdViewController
        
        self.navigationController?.pushViewController(thirdVC, animated: true)
        
        
    }
    @IBAction func clickForthVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let forthVC = storyboard.instantiateViewController(withIdentifier: "ForthViewController")as!ForthViewController
        
        self.navigationController?.pushViewController(forthVC, animated: true)
    }
    
    @IBAction func clickFifthVC(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let fifthVC = storyboard.instantiateViewController(withIdentifier: "FifthViewController")as!
        FifthViewController
        
        self.navigationController?.pushViewController(fifthVC, animated: true)
    }
    
    
    
}





