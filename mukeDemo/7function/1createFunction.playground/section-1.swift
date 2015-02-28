// Playground - noun: a place where people can play

import UIKit

func sayHello(name:String?,greeting:String) ->String
{
    let result = greeting+","+(name ?? "Guest" )+"!"
    return result
}

func sayWelcome() -> String
{
    return "Welcome to Play Swift"
}

func endConversation() ->Void
{
    println("#The conversation is over#")
}

var nickName:String?
nickName = "aa"
println(sayHello(nickName,"hello"))

println(sayWelcome())

endConversation()



