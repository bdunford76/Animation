//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt2: NSObject, Sketchable {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    // Add many functions
    // This is now a list, or an array, of functions
    var linewithlinescomingoutoftheline: [MathFunction] = []    // empty list
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1500, height: 800)
             
        // Initialize many functions
        for i in 1...50 {
            
            // Create the function
            let newFunction = MathFunction(a: 10,
                                           k: 8,
                                           d: CGFloat(i) * 50 + CGFloat(canvas.width + 10),
                                           c: 12,
                                           canvas: canvas,
                                           type: .quadratic)
            
            // Add it to the list
            linewithlinescomingoutoftheline.append(newFunction)
            
        }
        
        // Speed
        canvas.framesPerSecond = 20
    }

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {

        //clear canvas
        //opague white
       canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
        
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 1500, height: 800)
        
        // What frame are we on?
//        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 10
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
    
        // Randomly change the verticle position
        let newC = Int.random(in: -150...150)
        
        // Draw the entire list of functions all at once
        for x in 5...canvas.width {
           
      
            
            // Update the position of all functions
            for function in linewithlinescomingoutoftheline {
                function.c = CGFloat (newC)
                
                //gradually change the verticle stretch / comperession
                function.a = sin(Degrees(canvas.frameCount))
                
                
                function.update(on: canvas,
                                usingInputvalue: x)
            }

        }

        
    
    }

}
