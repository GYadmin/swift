// Playground - noun: a place where people can play

import UIKit

var arr:[Int] = [1,2,3,4,5,43,24]
sorted(arr,{(a:Int,b:Int)->Bool in
    return a>b
})

arr = sorted(arr,{a,b in return a<b})

arr = sorted(arr,{a,b in a>b})

arr = sorted(arr,{$0 > $1})

arr = sorted(arr, >)

