//
//  GoalsCellsViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 8/6/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

class GoalsCellsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tblList: UITableView!
    
    var listItemArray: [String] = Array()

    override func viewDidLoad() {
        super.viewDidLoad()

        listItemArray.append("Work")
        
        tblList.register(UINib.init(nibName: "TableViewCellGoal", bundle: nil), forCellReuseIdentifier: "CheckListIdentifier")
        tblList.dataSource = self
        tblList.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListIdentifier") as! TableViewCellGoal
        
        cell.lblTitle.text = listItemArray[indexPath.row]
        cell.selectionStyle = .none
        cell.btnCheckMark.addTarget(self, action: #selector(checkMarkedButtonClicked(sender:)), for: .touchUpInside)
        return cell
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 50.0
    }

    //func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
