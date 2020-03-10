//
//  MyRange.swift
//  DEmo2
//
//  Created by Somkiat Puisungnoen on 10/3/2563 BE.
//  Copyright © 2563 Somkiat Puisungnoen. All rights reserved.
//

import Foundation

class MyRange {
    var input: String
    init(input: String) throws {
        self.input = input
        if !startWithInclude() {
            throw MyRange.InputError.emptyStartText
        }
    }
    
    func startWithInclude() -> Bool {
        self.input.hasPrefix("[")
    }
    
    func getStartNumber() -> Int {
        Int(String(Array(self.input)[1])) ?? 0
    }
}

extension MyRange {
    enum InputError: Error{
        case emptyStartText
    }
}
