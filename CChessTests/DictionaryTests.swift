//
//  DictionaryTests.swift
//  CChessTests
//
//  Created by Golden Thumb on 2020-11-13.
//

import XCTest

class DictionaryTests: XCTestCase {

    func testIntIntDictionary() {
        var keyIntValueInt: Dictionary<Int, Int> = Dictionary<Int, Int>()
        keyIntValueInt[3] = Int(pow(3.0, 3.0))
        keyIntValueInt[13] = Int(pow(13.0, 3.0))
        
        XCTAssertEqual(27, keyIntValueInt[3])
        XCTAssertEqual(2197, keyIntValueInt[13])
    }

}
