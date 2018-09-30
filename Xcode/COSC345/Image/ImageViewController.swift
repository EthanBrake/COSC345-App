//
//  ImageViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 4/27/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBAction func importimage(_ sender: Any)
    {
        let userimage = UIImagePickerController()
        userimage.delegate = self
        userimage.sourceType = UIImagePickerControllerSourceType.photoLibrary
        userimage.allowsEditing = false
        
        self.present(userimage, animated: true){}
    }
    
    @IBOutlet weak var inputButton: UIButton!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]){
        if let userimage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            backgroundView.image = userimage
             self.inputButton.isHidden = true
        }else{
            // Error Message
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var backgroundView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Relaxing Image"
        
        let imageThatIgetFromSomewhere = UIImage(named: "userimage") //Change this to get your newly selected image
        if let image = imageThatIgetFromSomewhere {
            backgroundView.image = image
        }
        self.restorationIdentifier = "Hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
