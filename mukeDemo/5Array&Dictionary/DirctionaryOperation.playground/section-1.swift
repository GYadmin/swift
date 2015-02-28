// Playground - noun: a place where people can play

import UIKit

var courses = [76:"aa",77:"bb",78:"cc"]
var websites = ["aa":"aa","bb":"bb","cc":"cc"]

courses.count
courses.isEmpty

courses[77]

websites["aa"]

courses[73]

websites["ef"]

"ddd"+courses[77]!

courses[73] = "zouni"

courses

courses[76] = "efsfsfs"

courses

var oldValue = courses.updateValue("fsfsfs", forKey: 77)
oldValue

courses


courses[73] = nil

courses

let delValue = courses.removeValueForKey(77)

delValue
courses



for (key,value) in courses{
    println("\(key):\(value)")
}

courses.keys
courses.values

for index in courses.keys{
    println(index)
}

for index in courses.values{
    println(index)
}

Array (courses.keys)
[Int](courses.keys)















