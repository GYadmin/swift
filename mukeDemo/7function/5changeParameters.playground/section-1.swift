// Playground - noun: a place where people can play

import UIKit

func add(a:Int ,b:Int, others:Int ...)->Int
{
    var result = a+b
    for number in others
    {
        result += number
    }
    return result
}

var res = add(1,2,3,4)
