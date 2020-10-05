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
let preferredWidth = 475
let preferredHeight = 475
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: 450, height: 450, quality: .Ultra)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

//canvas.drawAxes(withScale: true, by: 25)
 

//Shape A
canvas.defaultBorderWidth = 3
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 75)
var vertices1: [Point] = [] // empty list
vertices1.append(Point(x: 25, y: 0)) // 1
vertices1.append(Point(x: 0, y: 0)) // 2
vertices1.append(Point(x: 0, y: 100)) // 3
vertices1.append(Point(x: 87, y: 187)) // 4
vertices1.append(Point(x: 150, y: 125)) // 5
vertices1.append(Point(x: 25, y: 0)) // 1
canvas.drawCustomShape(with: vertices1)

//shape B
canvas.defaultBorderWidth = 3
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 50)
var vertices2: [Point] = [] // empty list
vertices2.append(Point(x: 175, y: 100)) // 1
vertices2.append(Point(x: 175, y: 0)) // 2
vertices2.append(Point(x: 125, y: 0)) // 3
vertices2.append(Point(x: 125, y: 100)) // 4
vertices2.append(Point(x: 150, y: 125)) // 5
vertices2.append(Point(x: 175, y: 100)) // 1
canvas.drawCustomShape(with: vertices2)

//shape c
canvas.defaultBorderWidth = 3
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 44)
var vertices3: [Point] = [] // empty list
vertices3.append(Point(x: 250, y: 275)) // 1
vertices3.append(Point(x: 250, y: 0)) // 2
vertices3.append(Point(x: 325, y: 0)) // 3
vertices3.append(Point(x: 325, y: 200)) // 4
vertices3.append(Point(x: 250, y: 275)) // 1
canvas.drawCustomShape(with: vertices3)

//shape d
canvas.defaultBorderWidth = 3
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 67)
var vertices4: [Point] = [] // empty list
vertices4.append(Point(x: 350, y: 175)) // 1
vertices4.append(Point(x: 400, y: 125)) // 2
vertices4.append(Point(x: 400, y: 0)) // 3
vertices4.append(Point(x: 350, y: 0)) // 4
vertices4.append(Point(x: 350, y: 175)) // 1
canvas.drawCustomShape(with: vertices4)

//shape e
canvas.defaultBorderWidth = 3
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 35)
var vertices5: [Point] = [] // empty list
vertices5.append(Point(x: 450, y: 75)) // 1
vertices5.append(Point(x: 450, y: 175)) // 2
vertices5.append(Point(x: 300, y: 325)) // 3
vertices5.append(Point(x: 250, y: 275)) // 4
vertices5.append(Point(x: 450, y: 75)) // 1
canvas.drawCustomShape(with: vertices5)

//shape F
canvas.defaultBorderWidth = 2
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 50)
var vertices6: [Point] = [] // empty list
vertices6.append(Point(x: 450, y: 425)) // 1
vertices6.append(Point(x: 450, y: 325)) // 2
vertices6.append(Point(x: 375, y: 250)) // 3
vertices6.append(Point(x: 325, y: 300)) // 4
vertices6.append(Point(x: 450, y: 425)) // 1
canvas.drawCustomShape(with: vertices6)

//shape G
canvas.defaultBorderWidth = 3
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 75)
var vertices7: [Point] = [] // empty list
vertices7.append(Point(x: 225, y: 450)) // 1
vertices7.append(Point(x: 225, y: 300)) // 2
vertices7.append(Point(x: 175, y: 250)) // 3
vertices7.append(Point(x: 175, y: 400)) // 4
vertices7.append(Point(x: 225, y: 450)) // 1
canvas.drawCustomShape(with: vertices7)

//shape H
canvas.defaultBorderWidth = 2
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 50)
var vertices8: [Point] = [] // empty list
vertices8.append(Point(x: 225, y: 450)) // 1
vertices8.append(Point(x: 0, y: 225)) // 2
vertices8.append(Point(x: 0, y: 300)) // 3
vertices8.append(Point(x: 150, y: 450)) // 4
vertices8.append(Point(x: 225, y: 450)) // 1
canvas.drawCustomShape(with: vertices8)

//shape I
canvas.defaultBorderWidth = 2
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 60)
var vertices9: [Point] = [] // empty list
vertices9.append(Point(x: 25, y: 250)) // 1
vertices9.append(Point(x: 50, y: 275)) // 2
vertices9.append(Point(x: 250, y: 75)) // 3
vertices9.append(Point(x: 250, y: 75)) // 4
vertices9.append(Point(x: 250, y: 25)) // 1
canvas.drawCustomShape(with: vertices9)

//shape J
canvas.defaultBorderWidth = 2
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 67)
var vertices10: [Point] = [] // empty list
vertices10.append(Point(x: 0, y: 350)) // 1
vertices10.append(Point(x: 100, y: 450)) // 2
vertices10.append(Point(x: 50, y: 450)) // 3
vertices10.append(Point(x: 0, y: 400)) // 4
vertices10.append(Point(x: 0, y: 350)) // 1
canvas.drawCustomShape(with: vertices10)

//shape K
canvas.defaultBorderWidth = 2
canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 0, alpha: 80)
var vertices11: [Point] = [] // empty list
vertices11.append(Point(x: 375, y: 450)) // 1
vertices11.append(Point(x: 425, y: 450)) // 2
vertices11.append(Point(x: 150, y: 175)) // 3
vertices11.append(Point(x: 125, y: 200)) // 4
vertices11.append(Point(x: 375, y: 450)) // 1
canvas.drawCustomShape(with: vertices11)

canvas.copyToClipboard()









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
