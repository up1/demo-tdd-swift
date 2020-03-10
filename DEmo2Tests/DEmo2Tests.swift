//
//  DEmo2Tests.swift
//  DEmo2Tests
//
//  Created by Somkiat Puisungnoen on 4/3/2563 BE.
//  Copyright © 2563 Somkiat Puisungnoen. All rights reserved.
//

import XCTest
@testable import DEmo2

class DEmo2Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testStartWithInclude() {
        let m =  try! MyRange(input: "[1,5]")
        let result = m.startWithInclude()
        XCTAssertTrue(result, "Must start with [")
    }
    
    func testStartWithIncludeAndOne() {
        let m = try! MyRange(input: "[1,5]")
        let result = m.getStartNumber()
        XCTAssertEqual(result, 1)
    }
    
    func testErrorWithOutStart() {
        var thrownError: Error?
        XCTAssertThrowsError(try MyRange(input: "1,5]")) {
            thrownError = $0
        }
        XCTAssertTrue(
            thrownError is MyRange.InputError,
            "Unexpected error type: \(type(of: thrownError))"
        )
        XCTAssertEqual(thrownError as? MyRange.InputError, .emptyStartText)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
