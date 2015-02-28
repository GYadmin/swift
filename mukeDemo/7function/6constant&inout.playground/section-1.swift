// Playground - noun: a place where people can play

import UIKit

func toBinary(var num:Int )->String
{
    var result :String = ""
    while num != 0
    {
        result = String(num%2) + result
        num /= 2
    }
    return result
}

var num = 6
toBinary(num)
num

func swapTwoInts(inout a:Int,inout b:Int)
{
    let t = a;
    a = b
    b = t
}

var x = 0,y = 100

swapTwoInts(&x,&y)
x
y

