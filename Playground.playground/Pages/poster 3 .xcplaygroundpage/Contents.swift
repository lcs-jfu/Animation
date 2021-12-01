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
let orange = Color(hue: 15, saturation: 81, brightness: 88, alpha: 100)
let yellow = Color(hue: 46, saturation: 71, brightness: 97, alpha: 100)
let grey = Color(hue: 78, saturation: 4, brightness: 88, alpha: 100)
canvas.highPerformance = true
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
// Begin writing your code below (you can remove the examples shown)



canvas.fillColor = yellow

var greentriangle: [Point] = []
greentriangle.append(Point(x: 0, y: 200))
greentriangle.append(Point(x: 400, y: 600))
greentriangle.append(Point(x: 400, y: 200))
canvas.drawCustomShape(with: greentriangle)

canvas.fillColor = grey
var yellowtriangle: [Point] = []
yellowtriangle.append(Point(x: 0, y: 200))
yellowtriangle.append(Point(x: 400, y: 600))
yellowtriangle.append(Point(x: 0, y: 600))
canvas.drawCustomShape(with: yellowtriangle)


canvas.highPerformance = false

//black triangle
for xposition in stride(from: 0, through: 400, by: 45){
  
    for yposition in stride(from: 200, through: 600, by: 45){
        
    // tilted triangle 2
        canvas.fillColor = orange
    

        var triangle: [Point] = []
        triangle.append(Point(x: xposition, y: yposition))
        triangle.append(Point(x: xposition+45, y: yposition+45))
        triangle.append(Point(x: xposition+0, y: yposition+45))
        canvas.drawCustomShape(with: triangle)
    }}


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
