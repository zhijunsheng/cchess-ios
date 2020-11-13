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
            piecesBox.insert(CChessPiece(col: 0 + i * 8, row: 9, player: .black, rank: .rook, imageName: "bj"))
            piecesBox.insert(CChessPiece(col: 0 + i * 8, row: 0, player: .black, rank: .rook, imageName: "rj"))
            
            piecesBox.insert(CChessPiece(col: 1 + i * 6, row: 9, player: .black, rank: .knight, imageName: "bm"))
            piecesBox.insert(CChessPiece(col: 1 + i * 6, row: 0, player: .black, rank: .knight, imageName: "rm"))
            
            piecesBox.insert(CChessPiece(col: 2 + i * 4, row: 9, player: .black, rank: .bishop, imageName: "bx"))
            piecesBox.insert(CChessPiece(col: 2 + i * 4, row: 0, player: .black, rank: .bishop, imageName: "rx"))
            
            piecesBox.insert(CChessPiece(col: 3 + i * 2, row: 9, player: .black, rank: .warrior, imageName: "bs"))
            piecesBox.insert(CChessPiece(col: 3 + i * 2, row: 0, player: .black, rank: .warrior, imageName: "rs"))
            
            piecesBox.insert(CChessPiece(col: 1 + i * 6, row: 7, player: .black, rank: .cannon, imageName: "bp"))
            piecesBox.insert(CChessPiece(col: 1 + i * 6, row: 2, player: .black, rank: .cannon, imageName: "rp"))
        }
        
        for i in 0..<5 {
            piecesBox.insert(CChessPiece(col: i * 2, row: 6, player: .black, rank: .pawn, imageName: "bz"))
            piecesBox.insert(CChessPiece(col: i * 2, row: 3, player: .black, rank: .pawn, imageName: "rz"))
        }
        
        piecesBox.insert(CChessPiece(col: 4, row: 9, player: .black, rank: .king, imageName: "bb"))
        piecesBox.insert(CChessPiece(col: 4, row: 0, player: .black, rank: .king, imageName: "rb"))
    }
    
}
