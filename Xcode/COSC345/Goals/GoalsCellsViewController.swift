//
//  GoalsCellsViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 8/6/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

let defaultss = UserDefaults(suiteName: "345App")

var listItemArray: [String] = Array()
var myIndex = 0

protocol buttonPressDelegate {
    func buttonPressed() -> Void
}

class GoalsCellsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, buttonPressDelegate {
    func buttonPressed() {
        addGoalButton = UIButton
        print("yes")
    }
    

    @IBAction func testBtn(_ sender: Any) {
        print("Inside testBtn")
    }
    
    @IBOutlet weak var addGoalButton: UIButton!
    @IBOutlet weak var tblList: UITableView!

    
    override func viewDidAppear(_ animated: Bool) { // Could check if data received matches data?
        super.viewDidAppear(true)
        getData()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) { // Could check if data stored?
        super.viewDidDisappear(true)
        storeData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData() //Gets user data as application loads

        //This gets the custom view cell from the .xib file
        tblList.register(UINib.init(nibName: "TableViewCellGoal", bundle: nil), forCellReuseIdentifier: "addGoals")
        tblList.dataSource = self
        tblList.delegate = self
        tblList.rowHeight = UITableViewAutomaticDimension
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Tells the data source to return the number of rows in a given section of a table view.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItemArray.count
    }
    
    //Asks the data source for a cell to insert in a particular location of the table view.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblList.dequeueReusableCell(withIdentifier: "addGoals") as! TableViewCellGoal
        cell.textLabel?.text = listItemArray[indexPath.row] // changes to textLabel from tblList, enabled ... at end of sentence. 
        cell.selectionStyle = .none
        cell.btnCheckMark.addTarget(self, action: #selector(checkMarkedButtonClicked(sender:)), for: .touchUpInside) //when checkmark is clicked
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    //Asks the delegate for the height to use for a row in a specified location.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return UITableViewAutomaticDimension
    }
  

    //When my checkmark button is selected or deselected
 @objc func checkMarkedButtonClicked( sender: UIButton){
        if sender.isSelected{
            //uncheck button
            sender.isSelected = false
        } else {
            //checkMark
            sender.isSelected = true
        }
    }
    
    
    //Tells the delegate that the specified row is now selected. myIndex is the current row, once clicked performs a segue to view the selected Goal
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        myIndex = indexPath.row
        performSegue(withIdentifier: "toViewGoalSegue", sender: self)
    }
    
    //this func deletes cell rows
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            listItemArray.remove(at: indexPath.row)
           // listItemArray.deleteRows(at: [indexPath], with: .fade)
            
            tblList.reloadData()
        }
    }
    
    //This button called my alert
    @IBAction func newGoalPressed(_ sender: Any) {
        addTableRow()
    }
    
    //Alert func which allows the user to input a goal
    func addTableRow(){
        //This creates a UI alert
        let alert = UIAlertController(title: "My Goal:", message: "Create your goal:", preferredStyle: .alert)
        
        //Adds a text field to the alert
        alert.addTextField {
            (textField) in textField.placeholder = "Enter goal here"
        }
        
        //Adds a confirm button
        alert.addAction(UIAlertAction(title: "Confirm Goal", style: .default, handler: {[weak alert](_) in
            let text = alert?.textFields![0]
            listItemArray.append((text?.text)!)
            self.tblList.rowHeight = UITableViewAutomaticDimension
            self.tblList.reloadData()
        }))
        
        //Cancel button
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: {[weak alert](_) in
            alert?.dismiss(animated: true, completion: nil)
        }))
        
        //Present alert
        self.present(alert, animated: true, completion: nil)
        storeData()
    }
    
    //storing app data
    func storeData(){
        defaultss?.set(listItemArray, forKey: "savedData")
        //self.tableView.rowHeight = UITableViewAutomaticDimension
        defaultss?.synchronize()
    }
    
    //getting app data
    func getData(){
        let data = defaultss?.value(forKey: "savedData")
        if data != nil {
            listItemArray = data as! [String]
        } else{
            //Else what?
        }
    }
}
