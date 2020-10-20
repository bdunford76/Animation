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
    
    //starting position
    var x = 250
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
                
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        //Change postion
        x += 1
        
        //the top line circle right
        canvas.drawEllipse(at: Point(x: x, y: 250), width: 50, height: 50)
        canvas.fillColor = Color(hue: 274, saturation: 100, brightness: 100, alpha: 100)
        
        
        
        
    
    
}


}
