// Playground - noun: a place where people can play

import UIKit

enum Month : Int{
    case Jan=1,Feb,Mar,Apr
}

let curMonth:Month = .Mar

curMonth.rawValue

let nextMonth = Month(rawValue: 1)

nextMonth!.rawValue

var userInputNumber = 1
if let theMonth = Month(rawValue: userInputNumber)
{
    switch theMonth{
    case .Jan:println("It's the first month")
    case .Apr:println("It's the last month")
    default : println("It's a normal month")
    }
}
else
{
    println("Error")
}

enum VowelCharacter:Character
{
    case A = "a"
    case B = "e"
    case C = "c"
}

let vowelA = VowelCharacter.A
var userInputCharacter:Character = "s"
if userInputCharacter == vowelA.rawValue
{
    println("It's an 'a'")
}
else
{
    println("It's not an 'a'")
}
