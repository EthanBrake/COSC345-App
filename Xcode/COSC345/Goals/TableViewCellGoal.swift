//
//  TableViewCellGoal.swift
//  COSC345
//
//  Created by Ethan Brake on 8/6/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import UIKit

protocol buttonPressDelegate {
    func buttonPressed() -> Void
}

class TableViewCellGoal: UITableViewCell, buttonPressDelegate {
    
    func buttonPressed() {
        testBtn((Any).self)
    }
    
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBAction func testBtn(_ sender: Any) {
        
    }
    
    @IBOutlet weak var btnCheckMark: UIButton!
    
   
    
}
