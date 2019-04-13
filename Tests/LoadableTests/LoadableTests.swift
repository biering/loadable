//
//  LoadableTests.swift
//  Loadable
//
//  Created by Christoph Biering on 13.04.19.
//  Copyright © 2019 Loadable. All rights reserved.
//

import Foundation
import XCTest
import Loadable

class LoadableTests: XCTestCase {
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //// XCTAssertEqual(Loadable().text, "Hello, World!")
        
        let testViewController = TestViewController.loadFromStoryboard()
        print(testViewController)
        
        let testView = TestView.loadFromXib()
        print(testView)
        
        let testView2 = TestView.loadFromXib()
        
        testView2.addSubview(testView)
    }
    
    static var allTests = [
        ("testExample", testExample),
    ]
}
