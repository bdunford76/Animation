//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400, borderWidth: 1)

let Limegreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)

for x in stride(from: 400, through: 0, by: -50)
{
for y in stride(from: 400, through: 0, by: -50)
{

canvas.drawEllipse(at: Point(x: x, y: y), width: 45, height: 45)
let Limegreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
canvas.drawEllipse(at: Point(x: 400, y: 400), width: 45, height: 45)
canvas.fillColor = Limegreen
}
}

canvas.drawAxes(withScale: true, by: 50)
// Colour Things
let OffWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let LimeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)

// Borders off
canvas.drawShapesWithBorders = false

// Background green
canvas.fillColor = LimeGreen
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Background black
canvas.fillColor = Color.black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)

// Cricles
canvas.fillColor = LimeGreen
for y in stride(from: 0, through: 400, by: 40){
for x in stride(from: 0, through: 400, by: 40){
//Color whitte Circles
    if x + y > 400 {
canvas.fillColor = LimeGreen
} else if x == 400 {
canvas.fillColor = LimeGreen
} else if y == 0 {
canvas.fillColor = LimeGreen
} else if y == 400 {
canvas.fillColor = LimeGreen
} else {
canvas.fillColor = OffWhite
}
// Cricles Drawing
canvas.drawEllipse(at: Point(x: x, y: y), width: 35, height: 35)
}
}
canvas.drawAxes(withScale: true, by: 40)









































/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
