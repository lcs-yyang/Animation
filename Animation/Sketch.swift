import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx: Int
    var y : Int
    var dy: Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 0, toButNotIncluding: 501)
        dx = 5
        dy = 5
        y = random(from: 0, toButNotIncluding: 501)
        // No border
        canvas.drawShapesWithBorders = false
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //CLean up from the last time
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        y += dy
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        if x > 500 { //move left when hit the right edge
            dx = -5
        if y > 500 { //move left when hit the right edge
            dy = -5}
        }
        if x < 0 { // move right when hit the left edge
            dx = 5
        if y < 0 { // move right when hit the left edge
            dy = 5}
        }
        
    }
    
}


    
