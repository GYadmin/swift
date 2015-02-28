// Playground - noun: a place where people can play

import UIKit

func sayHello(#nickName:String, greeting:String = "Hello",others:String = "hello") ->String
{
    let result = greeting + "," + nickName + "!"
    return result
}

sayHello(nickName:"good")
sayHello(nickName: "fr", greeting:"Good morning")
