// Playground - noun: a place where people can play

import UIKit

// （2）可选链介绍
class Person {
    var name = ""
    func whoami() -> String {
        println("My name is \(name)")
        return name
    }
    init(name:String){
        self.name = name
    }
}

var p0:Person?
var p1:Person = Person(name: "Tom")

p1.name = "zhangsan"
p1.whoami()

p0 = p1
// 通过可选类型来调用相应的属性或者方法等

//p0!.name = "aaa"
//p0!.whoami()

/*
if let t:Person = p0 {
    t.whoami()
    t.name
}

if p0 != nil {
    p0!.name = "List"
    p0!.whoami()
}
*/

//可选链的方式
p0?.name = "List"
p0?.whoami()

//(2) 可选链的返回值

// 通过可选链调用取得的返回值会被包装成一个可选类型的数据
// 可选链有可能失效（nil） 也可能成功（Optional）
let t: String? = p0?.name
let t1: String = p0!.name
println(p0?.name)
println(p0!.name)

println(p0?.whoami())










