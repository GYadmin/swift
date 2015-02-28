// Playground - noun: a place where people can play

import UIKit

func add(a:Int, b:Int)->Int
{
    return a+b
}

let anotherAdd:(Int,Int)->Int = add
anotherAdd(1,2)

func sayHello(nickName:String)
{
    println("Hello"+nickName)
}

let anotherSayHello:(String)->() = sayHello
anotherSayHello("boo")

func sayHi()
{
    println("Hi")
}

let anotherSayHi:()->Void = sayHi
anotherSayHi()

var arr = [Int]()
for _ in 1...20
{
    arr.append(Int(arc4random()%100))
}

arr

sorted(arr)

func compareTowIntsl(a:Int , b:Int)->Bool{return a>b}

sorted(arr,compareTowIntsl)








