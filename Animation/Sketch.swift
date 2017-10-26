import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    //change in position of circle
    var dx : Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        // Set the change value
        dx = 3
        
        }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        //clean up, draw a white rectangle over the whole canvas.
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        
        // Make the circle bounce on the right edge
        if x > 500 { // start of the block
            dx = -3 // move left
        } // end of block
        
        // Make the circle bounce on the left edge
        if x < 0 { // start of the block
            dx = 3 // move right
        } //end of block

        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
    }

    
}
