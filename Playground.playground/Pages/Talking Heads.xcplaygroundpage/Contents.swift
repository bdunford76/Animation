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
for step in stride(from: 390, through: -25, by: -50) {

canvas.drawEllipse(at: Point(x: 200, y: 400), width: step, height: step)
}
canvas.drawShapesWithFill = false
canvas.borderColor = translucentPink
canvas.defaultBorderWidth = 10

//pink circles
for step in stride(from: 390, through: -10, by: -50) {
step
canvas.drawEllipse(at: Point(x: 200, y: 505), width: step, height: step)





















}
