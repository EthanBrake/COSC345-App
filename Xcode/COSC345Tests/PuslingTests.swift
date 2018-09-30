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

class PulsingTests: XCTestCase{
    
    //Tests if the animation in pulsing is working (i.e. not nil)
    func testScaleAnimation(){
        let animation = pulsing(layer: (Any).self)
        
        XCTAssertNotNil(animation.createScaleAnimation())
    }
    
    //Test if the animation opacity is working (i.e. it's fading in and out)
    func testOpacityAnimation(){
        let animation = pulsing(layer: (Any).self)
        
        XCTAssertNotNil(animation.createOpacityAnimation())
    }
    
    
}
