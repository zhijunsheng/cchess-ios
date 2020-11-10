//
//  BoardView.swift
//  CChessBoard
//
//  Created by Golden Thumb on 2020-10-30.
//

import UIKit

class BoardView: UIView {
    let cols: Int = 9
    let rows: Int = 10
    
    var originX: CGFloat = 55
    var originY: CGFloat = 57
    let cellSide: CGFloat = 75
    let frameMargin: CGFloat = 12

    override func draw(_ rect: CGRect) {
        originX = (bounds.width - CGFloat(cols - 1) * cellSide) / 2
        originY = (bounds.height - CGFloat(rows - 1) * cellSide) / 2
        
        drawGrid()
        drawFrame()
        drawStars()
        
        let pieceImage = UIImage(named: "bb")
//        pieceImage?.draw(at: CGPoint(x: 100, y: 100))
        pieceImage?.draw(in: CGRect(x: 100, y: 100, width: 200, height: 200))
    }
    
    func drawStars() {
        for i in 0..<2 {
            drawStar(col: 1 + i * 6, row: 2)
            drawStar(col: 1 + i * 6, row: 7)
            
            drawHalfStar(col: 0, row: 3 + 3 * i, isRightHalf: true)
            drawHalfStar(col: 8, row: 3 + 3 * i, isRightHalf: false)
        }
        
        for i in 0..<3 {
            drawStar(col: 2 + i * 2, row: 3)
            drawStar(col: 2 + i * 2, row: 6)
        }
    }
    
    func drawStar(col: Int, row: Int) {
        drawHalfStar(col: col, row: row, isRightHalf: true)
        drawHalfStar(col: col, row: row, isRightHalf: false)
    }
    
    func drawHalfStar(col: Int, row: Int, isRightHalf: Bool) {
        let gap: CGFloat = 0.1 * cellSide
        let shortLineLength: CGFloat = 3 * gap
        
        let path = UIBezierPath()
        
        if isRightHalf {
            path.move(to: CGPoint(x: originX + CGFloat(col) * cellSide + gap, y: originY + CGFloat(row) * cellSide - shortLineLength - gap))
            path.addLine(to: CGPoint(x: originX + CGFloat(col) * cellSide + gap, y: originY + CGFloat(row) * cellSide - gap))
            path.addLine(to: CGPoint(x: originX + CGFloat(col) * cellSide + gap + shortLineLength, y: originY + CGFloat(row) * cellSide - gap))
            
            path.move(to: CGPoint(x: originX + CGFloat(col) * cellSide + gap, y: originY + CGFloat(row) * cellSide + shortLineLength + gap))
            path.addLine(to: CGPoint(x: originX + CGFloat(col) * cellSide + gap, y: originY + CGFloat(row) * cellSide + gap))
            path.addLine(to: CGPoint(x: originX + CGFloat(col) * cellSide + gap + shortLineLength, y: originY + CGFloat(row) * cellSide + gap))
        } else {
            path.move(to: CGPoint(x: originX + CGFloat(col) * cellSide - gap, y: originY + CGFloat(row) * cellSide - shortLineLength - gap))
            path.addLine(to: CGPoint(x: originX + CGFloat(col) * cellSide - gap, y: originY + CGFloat(row) * cellSide - gap))
            path.addLine(to: CGPoint(x: originX + CGFloat(col) * cellSide - gap - shortLineLength, y: originY + CGFloat(row) * cellSide - gap))
            
            path.move(to: CGPoint(x: originX + CGFloat(col) * cellSide - gap, y: originY + CGFloat(row) * cellSide + shortLineLength + gap))
            path.addLine(to: CGPoint(x: originX + CGFloat(col) * cellSide - gap, y: originY + CGFloat(row) * cellSide + gap))
            path.addLine(to: CGPoint(x: originX + CGFloat(col) * cellSide - gap - shortLineLength, y: originY + CGFloat(row) * cellSide + gap))
        }

        path.stroke()
    }
    
    func drawGrid() {
        let path = UIBezierPath()
        
        for i in 0..<rows {
            path.move(to: CGPoint(x: originX, y: originY + CGFloat(i) * cellSide))
            path.addLine(to: CGPoint(x: originX + CGFloat(cols - 1) * cellSide, y: originY + CGFloat(i) * cellSide))
        }
        
        for i in 0..<cols {
            path.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY))
            path.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + 4 * cellSide))

            path.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + 5 * cellSide))
            path.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + 9 * cellSide))
        }
        
        for i in 0..<2 {
            path.move(to: CGPoint(x: originX + CGFloat(i * 8) * cellSide, y: originY + 4 * cellSide))
            path.addLine(to: CGPoint(x: originX + CGFloat(i * 8) * cellSide, y: originY + 5 * cellSide))
            
            path.move(to: CGPoint(x: originX + 3 * cellSide, y: originY + CGFloat(i * 7) * cellSide))
            path.addLine(to: CGPoint(x: originX + 5 * cellSide, y: originY + CGFloat(2 + i * 7) * cellSide))
            
            path.move(to: CGPoint(x: originX + 5 * cellSide, y: originY + CGFloat(i * 7) * cellSide))
            path.addLine(to: CGPoint(x: originX + 3 * cellSide, y: originY + CGFloat(2 + i * 7) * cellSide))
        }
        
        path.stroke()
    }

    func drawFrame() {
        let frame = UIBezierPath(rect: CGRect(x: originX - frameMargin, y: originY - frameMargin, width: CGFloat(cols - 1) * cellSide + 2 * frameMargin, height: CGFloat(rows - 1) * cellSide + 2 * frameMargin))
        frame.lineWidth = 5
        frame.stroke()
    }
}
