let preferredWidth = 400
let preferredHeight = 600


import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
//let canvas = Canvas(width: preferredWidth, height: preferredHeight)
let canvas = Canvas(width: preferredWidth, height: preferredHeight, quality: .Ultra)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

//Color hues
let lightblue = Color(hue: 180, saturation: 100, brightness: 72, alpha: 100)
let pink = Color(hue: 316, saturation: 92, brightness: 99, alpha: 65)
let blue = Color(hue: 221, saturation: 100, brightness: 62, alpha: 100)
let coolblue = Color(hue: 190, saturation: 100, brightness: 57, alpha: 100)

//The Shape
canvas.drawShapesWithFill = true
canvas.borderColor = lightblue
canvas.defaultBorderWidth = 11

//Background Color
canvas.fillColor = lightblue
var vertices: [Point] = [ ] // empty list of vertices
vertices.append(Point (x: 0, y: 0)) // start
vertices.append(Point (x: 0, y: 600))
vertices.append(Point (x: 400, y: 600))
vertices.append(Point (x: 400, y: 0)) // end
canvas.drawCustomShape(with: vertices)

canvas.fillColor = pink
var vertices1: [Point] = [ ] // empty list of vertices
vertices1.append(Point (x: 0, y: 0)) // start
vertices1.append(Point (x: 0, y: 400))
vertices1.append(Point (x: 400, y: 400))
vertices1.append(Point (x: 400, y: 0)) // end
canvas.drawCustomShape(with: vertices1)

var vertices2: [Point] = [ ] // empty list of vertices
vertices2.append(Point (x: 75, y: 0)) // start
vertices2.append(Point (x: 125, y: 50))
vertices2.append(Point (x: 75, y: 100))
vertices2.append(Point (x: 25, y: 50)) // end
canvas.drawCustomShape(with: vertices2)

var vertices3: [Point] = [ ] // empty list of vertices
vertices3.append(Point (x: 325, y: 0)) // start
vertices3.append(Point (x: 375, y: 50))
vertices3.append(Point (x: 325, y: 100))
vertices3.append(Point (x: 275, y: 50)) // end
canvas.drawCustomShape(with: vertices3)

var vertices4: [Point] = [ ] // empty list of vertices
vertices4.append(Point (x: 125, y: 50)) // start
vertices4.append(Point (x: 125, y: 50))
vertices4.append(Point (x: 275, y: 50))
vertices4.append(Point (x: 275, y: 50)) // end
canvas.drawCustomShape(with: vertices4)



canvas.drawRectangle(at: Point(x: 325, y: 100), width: 0, height: 600)
canvas.drawRectangle(at: Point(x: 75, y: 100), width: 0, height: 600)

canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = coolblue
canvas.defaultBorderWidth = 15
for step in stride(from: 390, through: 0, by: -50) {
step
canvas.drawEllipse(at: Point(x: 200, y: 505), width: step, height: step)

    
//TEXT
canvas.drawText(message: "DIVINCHI", at: Point(x: 90, y: 200), size: 50, kerning: 0)

canvas.drawText(message: "$25 per person", at: Point(x: 150, y: 50), size: 15, kerning: 0)
    
    canvas.drawText(message: "2020 nov 22nd at 9:05pm", at: Point(x: 115, y: 25), size: 15, kerning: 0)


canvas.copyToClipboard()
}
