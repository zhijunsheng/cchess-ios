//
//  CChessGame.swift
//  CChessBoard
//
//  Created by Golden Thumb on 2020-11-10.
//

import Foundation

struct CChessGame {
    var piecesBox: Set<CChessPiece> = []
    
    mutating func initBoard() {
        for i in 0..<2 {
            piecesBox.insert(CChessPiece(col: 0 + 8 * i, row: 9, player: .black, rank: .rook, imageName: "bj"))
            piecesBox.insert(CChessPiece(col: 0 + 8 * i, row: 0, player: .black, rank: .rook, imageName: "rj"))
            
            piecesBox.insert(CChessPiece(col: 1 + 6 * i, row: 9, player: .black, rank: .rook, imageName: "bm"))
            piecesBox.insert(CChessPiece(col: 1 + 6 * i, row: 0, player: .black, rank: .rook, imageName: "rm"))
        }
        
    }
    
}
