//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 400
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import AppKit

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
//canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */


// loop on top left corner same pattern
for b in stride(from: 400,
                through: 0,
                by: -50){
    canvas.lineColor = .red
    canvas.drawLine(from: Point(x: 0, y: b), to: Point(x: b, y: 400))
}

// left down corner pattern
for c in stride(from: 0,
                    through: 400,
                    by: 50){
    //draw line in pattern
    canvas.lineColor = .green
    canvas.drawLine(from: Point(x: c, y: 0),to: Point(x: 400, y: c))
    
    canvas.lineColor = .purple
    canvas.drawLine(from: Point(x: c, y: 0), to: Point(x: 0 , y: 400 - c ))

    canvas.lineColor = .black
    canvas.drawLine(from: Point(x: 400, y: c), to: Point(x: 400 - c, y: 400))
}


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
