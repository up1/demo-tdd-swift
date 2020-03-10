//
//  DEmo2UITests.swift
//  DEmo2UITests
//
//  Created by Somkiat Puisungnoen on 4/3/2563 BE.
//  Copyright © 2563 Somkiat Puisungnoen. All rights reserved.
//

import XCTest

class DEmo2UITests: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        super.tearDown()
        XCUIApplication().terminate()
    }
    
    func testExample() {
        let app = XCUIApplication()
        app.launch()
        app.textFields["input"].tap()
        
        app.textFields["input"].typeText("123")
        app.children(matching: .window).element(boundBy: 0).tap()
        
        app/*@START_MENU_TOKEN@*/ .buttons["result"]/*[[".buttons[\"Button\"]",".buttons[\"result\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ .tap()
    }
    
}

