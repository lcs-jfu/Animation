//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

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


// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)
canvas.lineColor = .orange
canvas.drawLine(from: Point(x: 200, y: 250), to: Point(x: 200, y: 0), lineWidth: 50, capStyle: .round, dashed: false)
canvas.fillColor = .green
var greytriangle: [Point] = []
greytriangle.append(Point(x: 100, y: 425))
greytriangle.append(Point(x: 200, y: 550))
greytriangle.append(Point(x: 300, y: 425))
canvas.drawCustomShape(with: greytriangle)

var aaa: [Point] = []
aaa.append(Point(x: 75, y: 320))
aaa.append(Point(x: 200, y: 525))
aaa.append(Point(x: 325, y: 320))
canvas.drawCustomShape(with:aaa)

var b: [Point] = []
b.append(Point(x: 50, y: 200))
b.append(Point(x: 200, y: 500))
b.append(Point(x: 350, y: 200))
canvas.drawCustomShape(with:b)

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
