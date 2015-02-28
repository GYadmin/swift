// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
    可选链
*/

// 有值，没有值两种状态
var opa:Optional<Int>
var opd:Int?

// 基本类型变量，使用前必须初始化
// 普通变量只有一种状态 安全
var a:Int
a = 10
println(opa)
println(a)

// 基本类型变量的局限性，有制造了我们的可选类型

if let xa = opa {
    println(xa)
}

var data:NSData? = NSData(contentsOfFile:"/ect/passwd")
println(data)