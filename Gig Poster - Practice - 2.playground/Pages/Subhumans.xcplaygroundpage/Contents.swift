//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...
canvas.fillColor=yellow
canvas.drawRectangle(at: Point(x:0,y:0), width: 400, height: 600)

//Start drawing purple polygons
//Make a list (array) of vertices

var polygonVertices:[Point] = [] // empty list of Point objects
polygonVertices.append(Point(x: 20, y: 50))
polygonVertices.append(Point(x: 170, y: 50))
polygonVertices.append(Point(x: 220, y: 150))
polygonVertices.append(Point(x: 70, y: 150))

var polygonVertices2:[Point] = [] // empty list of Point objects
polygonVertices2.append(Point(x: 20, y: 225))
polygonVertices2.append(Point(x: 170, y: 225))
polygonVertices2.append(Point(x: 220, y: 325))
polygonVertices2.append(Point(x: 70, y: 325))

var polygonVertices3:[Point] = [] // empty list of Point objects
polygonVertices3.append(Point(x: 340, y: 225))
polygonVertices3.append(Point(x: 400, y: 225))
polygonVertices3.append(Point(x: 400, y: 325))
polygonVertices3.append(Point(x: 390, y: 325))

var polygonVertices4:[Point] = [] // empty list of Point objects
polygonVertices4.append(Point(x: 340, y: 50))
polygonVertices4.append(Point(x: 400, y: 50))
polygonVertices4.append(Point(x: 400, y: 150))
polygonVertices4.append(Point(x: 390, y: 150))

canvas.fillColor = purple
canvas.drawShapesWithBorders=false
canvas.drawCustomShape(with: polygonVertices)
canvas.drawCustomShape(with: polygonVertices2)
canvas.drawCustomShape(with: polygonVertices3)
canvas.drawCustomShape(with: polygonVertices4)


//Brown parallelograms using two fpr in loops
for a in 0...1 {
    for b in 0...1 {
        var brownPolygonVertices:[Point] = []
        brownPolygonVertices.append(Point(x: -140+320*b, y: 50+175*a))
        brownPolygonVertices.append(Point(x: 10+320*b, y: 50+175*a))
        brownPolygonVertices.append(Point(x: 60+320*b, y: 150+175*a))
        brownPolygonVertices.append(Point(x: -90+320*b, y: 150+175*a))
        canvas.drawShapesWithBorders=false
        canvas.fillColor=brown
        canvas.drawCustomShape(with: brownPolygonVertices)
    }
}
//Red polygons
canvas.fillColor=lightRed
for n in 0...3 {
    var redPolygonVertices:[Point] = [] // empty list of Point objects
    redPolygonVertices.append(Point(x: -140+160*n, y: 135))
    redPolygonVertices.append(Point(x: 10+160*n, y: 135))
    redPolygonVertices.append(Point(x: 60+160*n, y: 235))
    redPolygonVertices.append(Point(x: -90+160*n, y: 235))
    canvas.drawShapesWithBorders=false
    canvas.drawCustomShape(with: redPolygonVertices)
}







//Last, draw a grid for referennce
for y in stride(from: 0, through: 600, by: 50){
    canvas.drawLine(from: Point(x:0,y:y), to: Point(x:400,y:y))
}
for x in stride(from: 0, through: 400, by: 50){
    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
}

/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

