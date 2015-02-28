// Playground - noun: a place where people can play

import UIKit

var score = 90

switch score {
case 0 :
    println("You get a egg")
case 1..<60 :
    println("Sorry,you fialed")
case 60..<100:
    println("Good you pass the exam")
default :
    println("You are talent")
}

var coordinate = (1,1)

switch coordinate
{
case (0,0):
    println("you are in here")
default:
    println("you are not in here")
}

let loginresult = (true,"my dear")
let (isLoginSuccess,_) = loginresult

if isLoginSuccess
{
    println("loing in success")
}

let coordinate1 = (0,1)
switch coordinate1
{
case (0,0):
    println("It's at orgin!")
case (_,0):
    println("(\(coordinate1.0),0 is on the s-asis.)")
case (0,_):
    println("(0,\(coordinate1.1)) is on the y-axis.")
default:
    println("not in here")
}



let coordinate2 = (1,1)
switch coordinate2
{
case (0,0):
    println("It's at orgin!")
case (_,0):
    println("(\(coordinate2.0),0 is on the s-asis.)")
case (0,_):
    println("(0,\(coordinate2.1)) is on the y-axis.")
case (let x,let y):
    println("The corrdinate is (\(x),\(y))")
}

let coordinate3 = (1,1)
switch coordinate3
{
case let (x,y) where x == y:
    println("It's at orgin!")
    fallthrough
case (_,0):
    println("(\(coordinate3.0),0 is on the s-asis.)")
case (0,_):
    println("(0,\(coordinate3.1)) is on the y-axis.")
case (let x,let y):
    println("The corrdinate is (\(x),\(y))")
}









