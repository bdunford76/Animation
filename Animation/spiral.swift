
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//
import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class Spiral: NSObject, Sketchable {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    // Add many spirals
    // This is now a list, or an array, of spirals
    var spirals: [IndividualSpiral] = []    // empty list
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1500, height: 800)
             
        // Initialize many spirals
        for i in 10...70 {
            
            // Give the one spiral a starting angle of rotation
            let spiral = IndividualSpiral(angleOffset: 24 * 12 * i,
                                          hue: 150 * Float(i))
            
            // Add the new spiral to the list
            spirals.append(spiral)
        }
        
        // Speed
        canvas.framesPerSecond = 80
    }
   
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // What frame are we on?
//        print(canvas.frameCount)
        // BAckground color
        let deepRed = Color(hue: 5, saturation: 85, brightness: 0, alpha: 100)
        canvas.fillColor = deepRed
        canvas.drawRectangle(at: Point(x: 1, y: 1), width: 1500, height: 800)
        
        canvas.defaultLineWidth = 10
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2 ))

        // Update the position of that one spiral
        for spiral in spirals {
            spiral.update(on: canvas)
        }

    
    }

}
