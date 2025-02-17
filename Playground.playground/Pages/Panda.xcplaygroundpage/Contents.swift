//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import Darwin

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)

canvas.drawShapesWithBorders = true

//draw arm
canvas.drawEllipse(at: Point(x: -180, y: 0), width:80 , height: 40)
canvas.drawEllipse(at: Point(x: -20, y: 0), width:80 , height: 40)

// draw legs

canvas.drawEllipse(at: Point(x: -80, y: -120), width:30 , height: 80)
canvas.drawEllipse(at: Point(x: -120, y: -120), width:30 , height: 80)
//draw body
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: -100, y: -40), width: 120, height: 160)

//draw panda ear
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -140, y: 110), width: 30, height: 30)
canvas.drawEllipse(at: Point(x: -62, y: 110), width: 30, height: 30)
//draw panda head
canvas.fillColor = .white
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -100, y: 80), width: 100, height: 100)

//draw panda eyes
canvas.drawEllipse(at: Point(x: -120, y: 90), width: 20, height: 27)
canvas.drawEllipse(at: Point(x: -80, y: 90), width: 20, height: 27)
canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -120, y: 90), width: 15, height: 15)
canvas.drawEllipse(at: Point(x: -80, y: 90), width: 15, height: 15)
canvas.drawEllipse(at: Point(x: -100, y: 70), width: 20, height: 20)




//draw mouth
canvas.lineColor = .black
canvas.drawCurve(from: Point(x: -103, y: 60),
                 to: Point(x: -126, y: 52), control1: Point(x: -106, y: 52), control2: Point(x: -124, y: 52))

canvas.drawCurve(from: Point(x: -96, y: 60),
                 to: Point(x: -73, y: 52), control1: Point(x: -93, y: 52), control2: Point(x: -75, y: 52))







/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
