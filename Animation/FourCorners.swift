//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class FourCorners: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var x: Int
    var y: Int
    var x1 = 250
    var x2 = 250
    var x3 = 250
    var y1 = 250
    var y2 = 250
    var y3 = 250
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        canvas.drawShapesWithBorders = false
        // Set starting position
        x = 250
        y = 250
        x1 = 250
        x2 = 250
        x3 = 250
        y1 = 250
        y2 = 250
        y3 = 250
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Move right and up
        x += 1
        y += 1
        canvas.fillColor = Color.red
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        
        // Move left and up
        x1 -= 1
        y1 += 1
        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: x1, y: y1), width: 50, height: 50)
        
        //move left and down
        x2 -= 1
        y2 -= 1
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(at: Point(x: x2, y: y2), width: 50, height: 50)
        
        //move right and down
        x3 += 1
        y3 -= 1
        canvas.fillColor = Color.blue
        canvas.drawEllipse(at: Point(x: x3, y: y3), width: 50, height: 50)
        
    
        
        
    }
    
}

