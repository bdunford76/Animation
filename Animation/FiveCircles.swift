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
    var x5 = 250
    
    
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
        //The top line circle right
        x += 1
        canvas.drawEllipse(at: Point(x: x, y: 250), width: 50, height: 50)
        canvas.fillColor = Color(hue: 274, saturation: 100, brightness: 100, alpha: 100)
        
        //The middle circle going right
        x1 += 1
        canvas.drawEllipse(at: Point(x: x, y: 50), width: 40, height: 40)
        canvas.fillColor = Color(hue: 94, saturation: 0, brightness: 0 ,alpha: 0)
        
        //The bottom circle going right
        x2 += 1
        canvas.drawEllipse(at: Point(x: x, y: 450), width: 50, height: 50)
        canvas.fillColor = Color(hue: 94, saturation: 100, brightness: 100, alpha: 100)
        
        
        
        //The top circle left
        x3 -= 1
        canvas.drawEllipse(at: Point(x: x3, y: 250), width: 50, height: 50)
        canvas.fillColor = Color(hue: 274, saturation: 100, brightness: 100, alpha: 100)
        
        //The middle circle going left
        x4 -= 1
        canvas.drawEllipse(at: Point(x: x4, y: 50), width: 50, height: 50)
        canvas.fillColor = Color(hue: 94, saturation: 0, brightness: 0 ,alpha: 0)
        
        //The bottom circle going left
        x5 -= 1
        canvas.drawEllipse(at: Point(x: x5, y: 450), width: 50, height: 50)
        canvas.fillColor = Color(hue: 94, saturation: 100, brightness: 100, alpha: 100)
        
        
        
        
        
        
        
        
        
        
    }
    
    
}
