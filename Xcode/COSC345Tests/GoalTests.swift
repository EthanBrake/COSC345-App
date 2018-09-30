//
//  GoalTests.swift
//  COSC345Tests
//
//  Created by Ethan Brake on 9/30/18.
//  Copyright © 2018 Ethan Brake. All rights reserved.
//

import Foundation
import XCTest


@testable import COSC345

class GoalTest : XCTestCase{
    
    func testClickingACell() {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! GoalsCellsViewController
        let cell = controller.tblList.dataSource?.tableView(controller.tblList, cellForRowAt: IndexPath(row: 0, section: 0))
        
        controller.performSegue(withIdentifier: "toViewGoalSegue", sender: cell)
        
        XCTAssertNotNil(controller.presentedViewController as? ViewGoalsViewController)
    }
    
    
    
    //Test to check if the button to add a goal works
//    func testAddNewGoal() {
//        let vc = GoalsCellsViewController()
//        vc.viewDidLoad()
//
//        XCTAssertNotNil(vc.newGoalPressed((Any).self), "Button Not Initialised")
//    }
    
    func testWhatIsAGoal(){
        let vc = GoalsViewController()
        vc.viewDidLoad()
        
        XCTAssertNotNil(vc.whatIsAGoalVC((Any).self), "Button Not Initialised")
    }
    
    func testtoTableViewGoal(){
//        // declare the storyboard, source view controller, and target view controller
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main.storyboard", bundle: nil)
//        let callingViewController = storyboard.instantiateViewController(withIdentifier: "GoalsViewController") as! GoalsViewController
//        let targetViewController = storyboard.instantiateViewController(withIdentifier: "GoalsCellsViewController") as! GoalsCellsViewController
//
//        // fetch the segue from story board
//        let targetSegue: UIStoryboardSegue = UIStoryboardSegue(identifier: callingViewController.toTableViewGoalSegue, source: callingViewController, destination: targetViewController)
//
//        // simulate when user taps a cell - we get the associated model object and send its id (of type Int) as the sender parameter of prepareForSegue()
//        let tappedModelId = 16202
//        callingViewController.prepare(for: targetSegue, sender: tappedModelId)
//
//        // confirm that prepareForSegue() properly sets the 'placeId' property of the destination view controller
//        XCTAssertEqual(tappedModelId, targetViewController)
        
        
        
        
        
    }
    
}
