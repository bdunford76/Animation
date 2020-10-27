//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FiveCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    //this makes the x work
    var x = 250
    var x1 = 250
    var x2 = 250
    var x3 = 250
    var x4 = 250
    
   // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        canvas.drawShapesWithBorders = false
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
        
    
        //The top line moving right
        x += 1
        canvas.fillColor = Color.purple
        canvas.drawEllipse(at: Point(x: x, y: 450), width: 50, height: 50)

        
        //The middle line cirlce moving left
        x1 -= 1
        canvas.fillColor = Color.orange
        canvas.drawEllipse(at: Point(x: x1, y: 350), width: 50, height: 50)
        
        
        //The close to bottom line moving right
        x2 += 1
        canvas.fillColor = Color.green
        canvas.drawEllipse(at: Point(x: x2, y: 250), width: 50, height: 50)
        
        //The very close to bottom line moving left
        x3 -= 1
        canvas.fillColor = Color.blue
        canvas.drawEllipse(at: Point(x: x3, y: 150), width: 50, height: 50)
        
        //The bottom line moving right
        x4 += 1
        canvas.fillColor = Color.black
        canvas.drawEllipse(at: Point(x: x4, y: 50), width: 50, height: 50)
        
    }
    
    
}
