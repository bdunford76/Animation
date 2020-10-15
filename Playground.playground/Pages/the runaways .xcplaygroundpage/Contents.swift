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
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)
canvas.drawShapesWithFill = true
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
canvas.defaultLineWidth = 15


//bottom left with loop
for size in stride(from: 25, through: 175, by: 25) {
    
    // When the size is a multiple of 50 (50 divides into size with a remainder of 0) make the color beige, otherwise make it black
    if size % 50 == 0 {
        canvas.lineColor = beige
    } else {
        canvas.lineColor = black
    
    }
    
    
    canvas.drawLine(from: Point(x: size, y: size), to: Point(x: 0, y: size))
    canvas.drawLine(from: Point(x: size, y: size), to: Point(x: size, y: 0))

}


//Top Left
canvas.drawLine(from: Point(x: 25, y: 375), to: Point(x: 0, y: 375))
canvas.drawLine(from: Point(x: 25, y: 375), to: Point(x: 25, y: 400))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 50, y: 350), to: Point(x: 50, y: 400))
canvas.drawLine(from: Point(x: 50, y: 350), to: Point(x: 0, y: 350))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 75, y: 325), to: Point(x: 75, y: 400))
canvas.drawLine(from: Point(x: 75, y: 325), to: Point(x: 0, y: 325))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 100, y: 300), to: Point(x: 100, y: 400))
canvas.drawLine(from: Point(x: 100, y: 300), to: Point(x: 0, y: 300))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 125, y: 275), to: Point(x: 125, y: 400))
canvas.drawLine(from: Point(x: 125, y: 275), to: Point(x: 0, y: 275))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 150, y: 250), to: Point(x: 150, y: 400))
canvas.drawLine(from: Point(x: 150, y: 250), to: Point(x: 0, y: 250))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 175, y: 225), to: Point(x: 175, y: 400))
canvas.drawLine(from: Point(x: 175, y: 225), to: Point(x: 0, y: 225))


//Top left
canvas.lineColor = black
canvas.drawLine(from: Point(x: 375, y: 375), to: Point(x: 375, y: 400))
canvas.drawLine(from: Point(x: 375, y: 375), to: Point(x: 400, y: 375))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 350, y: 350), to: Point(x: 350, y: 400))
canvas.drawLine(from: Point(x: 350, y: 350), to: Point(x: 400, y: 350))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 325, y: 325), to: Point(x: 325, y: 400))
canvas.drawLine(from: Point(x: 325, y: 325), to: Point(x: 400, y: 325))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 300, y: 300), to: Point(x: 300, y: 400))
canvas.drawLine(from: Point(x: 300, y: 300), to: Point(x: 400, y: 300))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 275, y: 275), to: Point(x: 275, y: 400))
canvas.drawLine(from: Point(x: 275, y: 275), to: Point(x: 400, y: 275))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 250, y: 250), to: Point(x: 250, y: 400))
canvas.drawLine(from: Point(x: 250, y: 250), to: Point(x: 400, y: 250))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 225, y: 225), to: Point(x: 225, y: 400))
canvas.drawLine(from: Point(x: 225, y: 225), to: Point(x: 400, y: 225))
//Bottom Right
canvas.lineColor = black
canvas.drawLine(from: Point(x: 375, y: 25), to: Point(x: 400, y: 25))
canvas.drawLine(from: Point(x: 375, y: 25), to: Point(x: 375, y: 0))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 350, y: 50), to: Point(x: 400, y: 50))
canvas.drawLine(from: Point(x: 350, y: 50), to: Point(x: 350, y: 0))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 325, y: 75), to: Point(x: 400, y: 75))
canvas.drawLine(from: Point(x: 325, y: 75), to: Point(x:325, y: 0))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 300, y: 100), to: Point(x: 400, y: 100))
canvas.drawLine(from: Point(x: 300, y: 100), to: Point(x: 300, y: 0))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 275, y: 125), to: Point(x: 400, y: 125))
canvas.drawLine(from: Point(x: 275, y: 125), to: Point(x: 275, y: 0))
canvas.lineColor = beige
canvas.drawLine(from: Point(x: 250, y: 150), to: Point(x: 400, y: 150))
canvas.drawLine(from: Point(x: 250, y: 150), to: Point(x: 250, y: 0))
canvas.lineColor = black
canvas.drawLine(from: Point(x: 225, y: 175), to: Point(x: 400, y: 175))
canvas.drawLine(from: Point(x: 225, y: 175), to: Point(x: 225, y: 0))

