//
//  GoalsCellsViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 8/6/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

var listItemArray: [String] = []
var myIndex = 0
var desc = ["Well done! Keep it up."]

class GoalsCellsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var addGoalButton: UIButton!
    @IBOutlet weak var tblList: UITableView!


    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItemArray.count
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListIdentifier") as! TableViewCellGoal
        //let cell = tableView.dequeueReusableCell(withIdentifier: "rows", for: indexPath)
        
        cell.lblTitle.text = listItemArray[indexPath.row]
        cell.selectionStyle = .none
        cell.btnCheckMark.addTarget(self, action: #selector(checkMarkedButtonClicked(sender:)), for: .touchUpInside)
        cell.textLabel?.text = listItemArray[indexPath.row]
        //cell.textLabel?.text = listItemArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    /* Initiates clickable button on TableCell to be checked or unchecked */
    @objc func checkMarkedButtonClicked( sender: UIButton){
        if sender.isSelected{
            //uncheck button
            sender.isSelected = false
        } else {
            //checkMark
            sender.isSelected = true
        }
    }
    /* This func allows you to swipe left on a table cell and delete */
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            listItemArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
        } else if editingStyle == .insert {
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 50.0
    }
    
    
    @IBAction func addGoal(_ sender: Any) {
        addTableRow()
    }
    
    func addTableRow(){
        //This creates a UI alert
        let alert = UIAlertController(title: "My Goal:", message: "Create your goal:", preferredStyle: .alert)
        //Adds a text field to the alert
        alert.addTextField{(textField) in
            textField.placeholder = "Enter goal here"
        }
        //Adds a confirm button
        alert.addAction(UIAlertAction(title: "Confirm Goal", style: .default, handler: {[weak alert](_) in
            let text = alert?.textFields![0]
            listItemArray.append((text?.text)!)
            //self.tableView.rowHeight = UITableViewAutomaticDimension
            //self.tableView.reloadData()
            
            
        }))
        //Present alert
        self.present(alert, animated: true, completion: nil)
       // storeData()
        
    }
    
    //storing app data
    /*
    func storeData(){
        defaults?.set(listItemArray, forKey: "savedData")
        //self.tableView.rowHeight = UITableViewAutomaticDimension
        defaults?.synchronize()
    }
    
    
    //getting app data
    func getData(){
        let data = defaults?.value(forKey: "savedData")
        if data != nil {
            listItemArray = data as! [String]
        } else{
            
        }
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listItemArray.append("Work")
        
        tblList.register(UINib.init(nibName: "TableViewCellGoal", bundle: nil), forCellReuseIdentifier: "CheckListIdentifier")
        tblList.dataSource = self
        tblList.delegate = self
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        myIndex = indexPath.row
        performSegue(withIdentifier: "displaySegue", sender: self)
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
