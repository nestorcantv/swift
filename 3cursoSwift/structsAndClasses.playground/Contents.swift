import UIKit
import Foundation

struct Resolution{
    var width = 0
    var height = 0
}
class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


var object1 = VideoMode ()
object1.resolution.width = 1080
object1.frameRate = 30.0
object1.interlaced = true
object1.name = "Video1"
object1


struct Point{
    var x = 0.0
    var y = 0.0
}
class GPS {
    var actualPoint = Point()
    var Destiny = Point ()
    
    
    func moveRight() {
        actualPoint.x += 1.0
    }
    func moveLeft() {
        actualPoint.x -= 1.0
    }
    func moveForward() {
        actualPoint.y += 1.0
    }
    func moveBackward() {
        actualPoint.y -= 1.0
    }
    func showPosition() {
        print(actualPoint.x,actualPoint.y)
    }
}

var nestGPS = GPS()
nestGPS.moveForward()
nestGPS.moveLeft()
nestGPS.showPosition()

func cost(color: Int)->Int {
    let baseCost = 40
    let colorCost = color * 5
    let resume = baseCost + colorCost
    let tax = Double(resume) * 0.1
    let total = resume + Int(tax)
    return total
}
cost(color: 20)
let names = ["Amy", "Clara"]

var addTwoDigits: (Int,Int)-> Int = { (a: Int, b: Int)->Int in return a + b }
addTwoDigits(5, 6)
