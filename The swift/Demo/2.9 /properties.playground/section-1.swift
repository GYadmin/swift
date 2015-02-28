// Playground - noun: a place where people can play

import UIKit

struct FixedLengthRange {
    var firstValue:Int
    let length:Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6

class DataImporter{
    var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager();
manager.data.append("Some data")
manager.data.append("Some more data")

println(manager.importer.filename)

struct Point{
    var x = 0.0,y = 0.0
}

struct Size {
    var width = 0.0,height = 0.0
}

struct Rect {
    var origin = Point();
    var size = Size();
    var center: Point{
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x:centerX,y:centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
println("square.origin is now at (\(square.origin.x), \(square.origin.y)")

struct Cuboid {
    var width = 0.0,height = 0.0,depth = 0.0
    var volume:Double {
        return width*height*depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
println("the volume of fourByFiveByTwo \(fourByFiveByTwo.volume)")

class StepCounter{
    var totalSteps:Int = 0{
        willSet(newTotalSteps){
            println("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                println("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 360

stepCounter.totalSteps = 1000

struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var comptedTypeProperty:Int {
        
    }
}



