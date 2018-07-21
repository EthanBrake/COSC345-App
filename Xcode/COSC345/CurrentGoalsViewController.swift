//
//  CurrentGoalsViewController.swift
//  COSC345
//
//  Created by Ethan Brake on 5/23/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit


var list = [String]()


class CurrentGoalsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var list = [String]()
    
    let userDefault = UserDefaults.standard
  
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")as UITableViewCell
        cell.textLabel?.text = list[indexPath.row]
        
        //here
        cell.textLabel?.numberOfLines = 0
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            list.remove(at: indexPath.row)
            userDefault.set(list, forKey: "cell")
            myTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = userDefault.stringArray(forKey: "cell"){
            list = x
        }
        myTableView.reloadData()
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.rowHeight = UITableViewAutomaticDimension

    }
  
    func assignArray(){
        let otherVC = WriteAGoalViewController()
        list = otherVC.listWriteVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignArray()

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
