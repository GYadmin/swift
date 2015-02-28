// Playground - noun: a place where people can play

import UIKit

/*
    swift 内存管理2
（1）深浅拷贝
（2）字符串拷贝
（3）集合类拷贝
（4）局部临时对象和全局对象
（5）类属性的声明周期
（6）隐式强引用-集合类 timer 元组
（7）闭包属性引起的强循环引用
（8）解决（7）的问题
*/


struct Deep {
    var copy:Int = 0
}

class Shallow {
    var copy:Int = 0
}

// 值类型的赋值是深拷贝
var d0 = Deep()
var d1 = d0
d1.copy = 9
println(d0.copy)
println(d1.copy)

// 引用赋值是浅拷贝
var s0 = Shallow()
var s1 = s0
s0.copy = 9
println(s0.copy)
println(s1.copy)

/*
    （2）字符串拷贝
*/

var swiftStr :String = "Hello"
var swiftStr1 = swiftStr

swiftStr1 += " World"

swiftStr

var ocStr = NSMutableString(string: "Hello")
var ocStr1 = ocStr

ocStr.insertString(" World", atIndex: ocStr.length)

ocStr
ocStr1

/*
    (3) 集合类型拷贝
*/
var array:Array<Int> = [1,2,3]
var array1 = array

array1 += [4,5,6]
println(array1)
println(array)

var dict:Dictionary<Int,String> = [1:"a",2:"b"]
var dict1 = dict

dict[3] = "c"
println(dict)
println(dict1)

var ocArray = NSMutableArray(array:[1,2,3])
var ocArray1 = ocArray

ocArray.addObject(5);
ocArray
ocArray1

/*
    (4）深入分析集合类型
*/
var de0 = Deep()
var de1 = Deep()

var dearry = [de0,de1]

var sh0 = Shallow()
var sh1 = Shallow()

var sharray = [sh0,sh1]

var dearry1 = dearry
var sharry1 = sharray

//当将数组中的某个元素替换，或者改变了数组的大小，不会影响另外一个数组
//dearry1.removeLast()
dearry1[0] = Deep(copy:3)

dearry
dearry1

sharry1[1].copy = 99
sharray

/*
    (5) 隐式强引用
*/

class Student {
    var name:String
    init(name:String){
        self.name = name
    }
    func show(){
        println("name=\(name)")
    }
    deinit{
        println("name=\(name) deinit!")
    }
}

var stu0:Student? = Student(name: "Tom")
var stu1 = stu0

stu0 = nil
stu1 = nil

var stuarray:[Student]? = [Student(name: "zhangsan"),Student(name: "lisi")]

//stuarray.removeAtIndex(0)
stuarray = nil

/*
    (6)局部和全局引用
*/

// 1.作用域 2.生命周期

if true {
    var ref:Student = Student(name: "zhang")
}

func localFunc(){
    var ref:Student = Student(name: "ll")
}

func testFunc(){
    gloabal_ref = 4
}

//生命周期：跟当前程序的生命周期相同
var gloabal_ref: Int = Int(8)
testFunc()
gloabal_ref = 10

var golable_stu:Student? = Student(name: "zhangsan")
golable_stu = nil

/*
    (7) 闭包属性引起循环强引用
*/

class  CycleRef {
    lazy var closure:()->Void = {
        println("Closre!")
    }
    deinit {
        println("deinit")
    }
}

var cr:CycleRef? = CycleRef()
cr!.closure
cr = nil





























