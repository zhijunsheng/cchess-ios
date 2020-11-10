//
//  ViewController.swift
//  CChessBoard
//
//  Created by Golden Thumb on 2020-10-30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boardView: BoardView!
    var cchessGame = CChessGame()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cchessGame.initBoard()
        boardView.shadowPiecesBox = cchessGame.piecesBox
    }


}

