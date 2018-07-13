//
//  HelpViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 4/27/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class SettingsController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBAction func importimage(_ sender: Any)
    {
        let userimage = UIImagePickerController()
        userimage.delegate = self
        
        userimage.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        userimage.allowsEditing = false
        
        self.present(userimage, animated: true)
        {
            // After it is complete
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let userimage = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            backgroundView.image = userimage
        }
        else
        {
            // Error Message
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var backgroundView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageThatIgetFromSomewhere = UIImage(named: "userimage") //Change this to get your newly selected image
        if let image = imageThatIgetFromSomewhere {
            backgroundView.image = image
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
