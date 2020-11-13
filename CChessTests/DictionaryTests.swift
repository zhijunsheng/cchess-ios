//
//  DictionaryTests.swift
//  CChessTests
//
//  Created by Golden Thumb on 2020-11-13.
//

import XCTest
@testable import CChessBoard

class DictionaryTests: XCTestCase {
    
    func testCChessPieceImageDictionary() {
        var keyCChessPieceValueUIImage: Dictionary<CChessPiece, UIImage> = [:]
        let leftBlackRook = CChessPiece(col: 0, row: 9, player: .black, rank: .rook, imageName: "bj")
        let leftBlackRookImage: UIImage? = UIImage(named: leftBlackRook.imageName)
        
        keyCChessPieceValueUIImage[leftBlackRook] = nil
        XCTAssertEqual(0, keyCChessPieceValueUIImage.count)
        
        keyCChessPieceValueUIImage[leftBlackRook] = leftBlackRookImage
        XCTAssertEqual(1, keyCChessPieceValueUIImage.count)
    }

    func testIntIntDictionary() {
        var keyIntValueInt: Dictionary<Int, Int> = Dictionary<Int, Int>()
        keyIntValueInt[3] = Int(pow(3.0, 3.0))
        keyIntValueInt[13] = Int(pow(13.0, 3.0))
        
        XCTAssertEqual(27, keyIntValueInt[3])
        XCTAssertEqual(2197, keyIntValueInt[13])
    }
    
    func testStringIntDictionary() {
        var keyStringValueInt: Dictionary<String, Int> = [:]
        keyStringValueInt["Golden Thumb"] = 3030303030303031
        
        XCTAssertNil(keyStringValueInt["Donald"])
        XCTAssertEqual(3030303030303031, keyStringValueInt["Golden Thumb"])
    }
}
