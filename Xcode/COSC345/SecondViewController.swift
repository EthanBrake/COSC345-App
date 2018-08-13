//
//  SecondViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 3/23/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.

import UIKit

var myrowIndex = 0
var list: [String] = []

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let listUserDefault = UserDefaults.standard
    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell") as UITableViewCell
        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            listUserDefault.set(list, forKey: "best")
            myTableView.reloadData()
        }
    }
    
    @IBOutlet weak var input: UITextField!

    @IBAction func additem(_ sender: Any) {
        if(input.text != "")
        {
            list.append(input.text!)
            input.text = ""
            listUserDefault.set(list, forKey: "best")
            myTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let list = listUserDefault.stringArray(forKey: "best"){
//            list = list
//        }

        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.rowHeight = UITableViewAutomaticDimension

        self.title = "Second"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //myIndex is always the cell that the user taps on
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        myrowIndex = indexPath.row
        performSegue(withIdentifier: "JournalConnect", sender: self)
    }
}
