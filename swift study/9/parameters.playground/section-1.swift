// Playground - noun: a place where people can play

import UIKit

/*
    属性
（1）存储属性
（2）常量属性
（3）结构体常量
（4）延迟存储属性
（5）计算属性
（6）只读计算属性
（7）swift的kvo
（8）类属性


*/

/*
(1) 存储属性
*/

class Person {
    var name:String = "gg"
    var age:Int = 123
    let gender:String = "male"
}

var p = Person()
p.name = "List"
p.age = 10
//grent = false

struct Person1{
    let name:String = "free"
    var age: Int = 10
}

//结构体常量对象，他本是是个常量其次对应的对象不可以被修改
//类常量对象，它本身是一个常量，其次他对应的对象，可以通过他来进行修改
//结构体枚举：值引用，类：引用
let ps = Person1()
let p1:Person = Person()
let p2:Person = Person()
//p1 = p2
p1.age

//（3）swift 语言中所有值必须有初始值，也有例外 就是延迟存储属性
// 1.延迟属性 不适合开始是就初始化 取决于外部的许多因素
// 2.属性外部可能不用，但是它的初始化又需要很长的时间
struct MyStudent {
    var name:String
    var chinese:Double
    var math:Double
    func show (){
        println("\(name),\(chinese),\(math)")
    }
}

class MyClass {
    var members:[MyStudent] = []
    //所有学生的平均成绩
    lazy var score:Double = self.getScore()
    func getScore() -> Double{
        var t:Double = 0
        for i in members{
            t += i.chinese
            t += i.math
        }
        if members.count > 0{
            return t / Double(members.count)
        }else{
            return 0
        }
        
    }
    
    func show() {
        for i in members {
            i.show()
        }
    }
}

let s0 = MyStudent(name: "aa", chinese: 80, math: 90)
let s1 = MyStudent(name: "bb", chinese: 90, math: 100)

let c0 = MyClass()
c0.members.append(s0)
c0.members.append(s1)

//c0.show()
//c0.getScore()

c0.score

/*
(5) 计算属性
1.Swift中的计算属性不直接存储值，跟存储属性不同，没有任何的“后段存储与之对应”
2.计算属性用于计算，可以实现setter和getter这两种计算方法
3.枚举不可以有存储属性，但是允许有计算属性

（6）只读计算属性

*/

struct MyRect {
    var originon:(x:Double, y:Double) = (0,0)
    var size: (w:Double, h:Double) = (0,0)
    var center:(x:Double, y:Double) {
        get {
            return (originon.x + size.w/2,originon.y + size.h/2)
        }
        set {
            //origin 是存储属性，可以被赋值
            // set 没有提供参数时 系统默认给newValue
            originon.x = newValue.x - size.w/2
            originon.y = newValue.y - size.h/2
        }
    }
}

var rect = MyRect()
rect.size = (100,100)
rect.originon = (0,0)
rect.center = (100,100)
println(rect.center)
rect.originon


class MyClass2 {
    var members:[MyStudent] = []
    //所有学生的平均成绩
    lazy var score:Double = self.getScore()
    
    // 只提供了get方法的计算属性
    var average: Double {
        // get 可以没有
        get {
            var t:Double = 0
            for i in members{
                t += i.chinese
                t += i.math
            }
            if members.count > 0{
                return t / Double(members.count)
            }else{
                return 0
            }
        }
    }
    
    func getScore() -> Double{
        var t:Double = 0
        for i in members{
            t += i.chinese
            t += i.math
        }
        if members.count > 0{
            return t / Double(members.count)
        }else{
            return 0
        }
        
    }
    
    func show() {
        for i in members {
            i.show()
        }
    }
}

/*
(7) 观察属性的变化，是指属性被修改时可以调用我们实现好的代码去额外执行一些操作类似OC中的KVO
存在两种属性观察器
1.willSet 在设置新的值的时候调用
2.didSet 在新值是值之后别调用

lazy不可调用 计算属性也不可以 继承可以使用
*/

struct MyRect2 {
    var originon:(x:Double, y:Double) = (0,0){
        willSet {
            println("will set: \(newValue.x), \(newValue.y)")
        }
        didSet {
            println("did set: \(oldValue.x), \(oldValue.y)")
        }
    }
    var size: (w:Double, h:Double) = (0,0)
    var center:(x:Double, y:Double) {
        get {
            return (originon.x + size.w/2,originon.y + size.h/2)
        }
        set {
            //origin 是存储属性，可以被赋值
            // set 没有提供参数时 系统默认给newValue
            originon.x = newValue.x - size.w/2
            originon.y = newValue.y - size.h/2
        }
    }
}
var myrect2 = MyRect2()
myrect2.originon = (100,100)

/*
    类型属性
1.也就是为类本身定义属性，这样的属性不隶属与某一个对象，可以认为所有的对象公用这个属性
2.结构体或者枚举可以定义存储或者计算型“类属性”，而类只能定义计算型类属性

*/
struct TypeProperty {
    var property: Int = 0
    static var staticProperty: Int = 0
    var staticComputProperty: Int {
        return TypeProperty.staticProperty
    }
    func test() {
        println("peroperty=\(property),staticPerporty=\(TypeProperty.staticProperty)")
    }
}

var obj = TypeProperty();
obj.property = 10
TypeProperty.staticProperty = 10
obj.test()
obj.staticComputProperty

var obj2 = TypeProperty();
obj2.property = 20
obj2.test()

class TypePropertyClass {
    var property: Int = 0
    class var staticComputProperty: Int {
        get {
            return 10
        }
        set {
            
        }
    }
    func test() {
        println("peroperty=\(property)")
    }
}

var typePropertyClass = TypePropertyClass()





















