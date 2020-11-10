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
}
