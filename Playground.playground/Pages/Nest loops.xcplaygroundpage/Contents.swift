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

// Move the origin from the bottom-left corner of the canvas to it's centre point
// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)












//all colors.
let backgroundcolor = Color(hue: 199, saturation: 66, brightness: 84, alpha: 100)
let transparentrose = Color(hue: 80, saturation: 7, brightness: 87, alpha: 100)
let transparentpurple = Color(hue: 310, saturation: 54, brightness: 61, alpha: 90 )
let transparentwhite = Color(hue: 0, saturation: 80, brightness: 80, alpha: 0)
canvas.highPerformance = true
//background
for b in stride(from: 0, through: 400, by: 1){
    canvas.lineColor = backgroundcolor
    canvas.drawLine(from: Point(x: b, y: 0 ), to: Point(x: b, y: 600))
    
}
// for the 2 circles
canvas.highPerformance = false
canvas.defaultBorderWidth = 12
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
//circle in the middle
for i in stride(from: 400, through: 0, by: -50){
    canvas.borderColor = transparentrose
    canvas.drawEllipse(at: Point(x: 200, y: 400), width: i, height: i)
    canvas.borderColor = transparentwhite
    canvas.drawEllipse(at: Point(x: 200, y: 400), width: i-5, height: i-5)
}
//circle on the top
for i in stride(from: 400, through: 0, by: -50){
    canvas.borderColor =  transparentwhite
    canvas.drawEllipse(at: Point(x: 200, y: 500), width: i, height: i)
    canvas.borderColor = transparentpurple
    canvas.drawEllipse(at: Point(x: 200, y: 500), width: i-5, height: i-5)
}



//canvas.drawEllipse(at: Point(x: 200, y: 500), width: i, height: i)

//canvas.drawEllipse(at: Point(x: 200, y: 500), width: i-25, height: i-25)


//for loop in stride(from: 300, through: 475, by: 12.5) {
    //canvas.drawEllipse(at: Point(x: 300, y: 300), width: 10, height: 10)}




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
