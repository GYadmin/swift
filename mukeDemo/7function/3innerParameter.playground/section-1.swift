// Playground - noun: a place where people can play

import UIKit

func sayHello(#nickName:String, greetingWord greeting:String) ->String
{
    let result = greeting + "," + nickName + "!"
    return result
}

sayHello(nickName:"boo", greetingWord:"Hello")

var arr:[Int] = []
arr.insert(2, atIndex: 0)

