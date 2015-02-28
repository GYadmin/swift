// Playground - noun: a place where people can play

import UIKit

var array = ["A","B","c"]
var array2:[String] = ["A","B",""]
var array3:Array<String> = ["A","B"]

var array4 = [Int]()

var array5 = Array<String>()

var array6:Array<Int> = []

array6.append(2);

array = []

array.append("A")

array = []
array = [String]()
array = Array<String>()

//array6 = [Int](count:10
var array7 = [2,34,5]

var array8 = array6+array7

array += ["a","b","d","e","f"]

array.insert("Hello", atIndex: 2)

array.removeAtIndex(0)

array.removeLast()

array[0]

array[0] = "c"

array

array[0...3] = ["a","b","c"]

array[0...2] = ["good"]

//for index in 0..<array.count{
//    println(array[index])
//}

for item in array{
    println(item)
}

for (index,item) in enumerate(array){
    println("\(index)--\(item)")
}









