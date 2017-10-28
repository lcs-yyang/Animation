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
        dx = 2
        
        }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
    
        // Change position
        x += dx
        
        // Draw an ellipse on top of the canvas (move to right)
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
        
        
        // Draw an ellipse on top of the canvas (move to left)
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: 500-x, centreY: 350, width: 50, height: 50)
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: 500-x, centreY: 150, width: 50, height: 50)


    }

    
}
