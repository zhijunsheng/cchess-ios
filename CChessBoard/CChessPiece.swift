//
//  CChessPiece.swift
//  CChessBoard
//
//  Created by Golden Thumb on 2020-11-10.
//

import Foundation

struct CChessPiece: Hashable {
    let col: Int
    let row: Int
    let player: CChessPlayer
    let rank: CChessRank
    let imageName: String
    
    static func ==(lhs: CChessPiece, rhs: CChessPiece) -> Bool {
        return lhs.col == rhs.col && lhs.row == rhs.row && lhs.player == rhs.player && lhs.rank == rhs.rank
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(col)
        hasher.combine(row)
        hasher.combine(player)
        hasher.combine(rank)
    }
}
