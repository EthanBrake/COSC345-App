//
//  DiaryViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 3/23/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.

import UIKit

var myrowIndex = 0
var list: [String] = []

class DiaryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
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

    @IBAction func additem(_ sender: Any) { // Test if item added
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
        
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.rowHeight = UITableViewAutomaticDimension

        self.title = "Diary"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        myrowIndex = indexPath.row
        performSegue(withIdentifier: "JournalConnect", sender: self)
    }
}
