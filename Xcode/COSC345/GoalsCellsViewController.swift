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


class GoalsCellsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var addGoalButton: UIButton!
    @IBOutlet weak var tblList: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        getData()
        
    }
    override func viewDidDisappear(_ animated: Bool) {
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
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblList.dequeueReusableCell(withIdentifier: "addGoals") as! TableViewCellGoal
        //changed to tblList from tableView
        cell.textLabel?.text = listItemArray[indexPath.row] // changes to textLabel from tblList, enabled ... at end of sentence. 
        cell.selectionStyle = .none
        cell.btnCheckMark.addTarget(self, action: #selector(checkMarkedButtonClicked(sender:)), for: .touchUpInside)
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return UITableViewAutomaticDimension
    }
  
    @objc func checkMarkedButtonClicked( sender: UIButton){
        if sender.isSelected{
            //uncheck button
            sender.isSelected = false
        } else {
            //checkMark
            sender.isSelected = true
        }
    }


    //myIndex is always the cell that the user taps on
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
    
    
    
    @IBAction func newGoalPressed(_ sender: Any) {
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
            self.tblList.rowHeight = UITableViewAutomaticDimension
            self.tblList.reloadData()
            
            
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
            
        }
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
