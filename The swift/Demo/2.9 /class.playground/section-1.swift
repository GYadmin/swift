// Playground - noun: a place where people can play

import UIKit

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

println("The width of someResolution id\(someResolution.width)")

someVideoMode.resolution.width = 1280
println("The width of someVideoMode is now \(someVideoMode)")

let vga = Resolution(width: 640, height: 480)

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

println("cinema is now \(cinema.width) pixels wide")
println("hd is still \(hd.width) pixels wide")

enum CompassPoint{
    case North,South,East,West
}

var currentDirection = CompassPoint.West
let rememberDirection = currentDirection
currentDirection = .East
if rememberDirection == .West
{
    println("The remembered direction is still .West")
}

//类是引用类型
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 28.0

let alsotenEighty = tenEighty
alsotenEighty.frameRate = 30.0

println("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

if tenEighty === alsotenEighty
{
    println(" same instance")
}



























