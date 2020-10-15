//Required Code
//Canvas Sizeing
let preferredWidth = 400
let preferredHeight = 600

import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
//Required Code end
//Free code start

// COLORS
let lightBlue = Color(hue: 193, saturation: 100, brightness: 86, alpha: 100)
let offWhite = Color(hue: 85, saturation: 8, brightness: 88, alpha: 100)
let translucentPink = Color(hue: 325, saturation: 100, brightness: 81, alpha: 75)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
//Backgroud Colour
canvas.fillColor = lightBlue
var vertices: [Point] = [ ] // empty list of vertices
vertices.append(Point (x: 0, y: 0)) // start
vertices.append(Point (x: 0, y: 600))
vertices.append(Point (x: 400, y: 600))
vertices.append(Point (x: 400, y: 0)) // end
canvas.drawCustomShape(with: vertices)
//The Shape
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite
canvas.defaultBorderWidth = 11

//off white circles
for step in stride(from: 390, through: 0, by: -50) {
    
    canvas.drawEllipse(at: Point(x: 200, y: 400), width: step, height: step)
}

// draw last white circle
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = offWhite
canvas.drawEllipse(at: Point(x: 200, y: 400), width: 13, height: 13)

//pink circles
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = translucentPink
canvas.defaultBorderWidth = 11
for step in stride(from: 390, through: 0, by: -50) {
step
canvas.drawEllipse(at: Point(x: 200, y: 505), width: step, height: step)
}

// draw last translucentPink circle
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = translucentPink
canvas.drawEllipse(at: Point(x: 200, y: 505), width: 13, height: 13)

//text
canvas.drawText(message: "superdrag", at: Point(x: 25, y: 85), size: 40, kerning: 0)
canvas.drawText(message: "with", at: Point(x: 20, y: 50), size: 10, kerning: 0)
canvas.drawText(message: "the shambles", at: Point(x: 20, y: 35), size: 10, kerning: 0)
canvas.drawText(message: "and lifter", at: Point(x: 20, y: 20), size: 10, kerning: 0)
canvas.drawText(message: "thursday", at: Point(x: 103, y: 50), size: 10, kerning: 0)
canvas.drawText(message: "june 12 1996 / 8:30", at: Point(x: 103, y: 35), size: 10, kerning: 0)
canvas.drawText(message: "no age limit", at: Point(x: 103, y: 20), size: 10, kerning: 0)
canvas.drawText(message: "at brick by brick", at: Point(x: 300, y: 50), size: 10, kerning: 0)
canvas.drawText(message: "1130 beunos avenue", at: Point(x: 300, y: 35), size: 10, kerning: 0)
canvas.drawText(message: "san diego, ca", at: Point(x: 300, y: 20), size: 10, kerning: 0)

// draw axes
canvas.drawAxes(withScale: true, by: 50)
