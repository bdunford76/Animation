//Height and width of canvas
let preferredWidth = 400
let preferredHeight = 600
//importing things
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

// Replace this comment with your first comment – what is the goal of the code you're about to write?
canvas.drawRectangle(at: Point(x: 50, y: 75), width: 100, height: 200)


//Colour hues
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)

//Background Color
canvas.fillColor = deepRed
var vertices: [Point] = [ ] // empty list of vertices
vertices.append(Point (x: 0, y: 0)) // start
vertices.append(Point (x: 0, y: 600))
vertices.append(Point (x: 400, y: 600))
vertices.append(Point (x: 400, y: 0)) // end
canvas.drawCustomShape(with: vertices)
for step in stride(from: 400, through: 0, by: -50) {
step
//diamond 1
var vertices1: [Point] = [ ] // empty list of vertices
vertices1.append(Point (x: 50, y: 0)) // start
vertices1.append(Point (x: 100, y: 50))
vertices1.append(Point (x: 50, y: 100))
vertices1.append(Point (x: 0, y: 50)) // end
canvas.drawCustomShape(with: vertices1)












canvas.drawAxes(withScale: true, by: 50)



}
