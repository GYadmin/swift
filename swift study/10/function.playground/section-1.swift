// Playground - noun: a place where people can play

import UIKit

/*
    方法
（1）实例方法
（2）方法的参数名称
（3）实例方法中隐藏的self
（4)mutating方法
（5）类方法
（6）下表脚本语法
（7）单索引值下表脚本
（8）多索引下表脚本
*/

class MyPoing {
    var _x:Double = 0.0
    var _y:Double = 0.0
    
    func setX(#x:Double, y:Double){
        _x = x
        _y = y
    }
    func show(){
        println("x=\(_x), y=\(_y)")
    }
}

func setX(#x:Double, #y:Double){
    var _x:Double
    var _y:Double
    _x = x
    _y = y
}

setX(x:10, y:10)
var p0 = MyPoing();
p0.setX(x:10.0,y:10.0)
p0.show()

/*
    (3)self
*/

/*
    (4)mutating 方法
值类型（结构体或者枚举）默认方法是不可以修改属性的，如果要修改需要做特殊处理
*/

struct MyPerson {
    var name:String = ""
    var age:Int = 0
    mutating func set(#name:String, age:Int){
        self.name = name
        self.age = age
    }
    func show(){
        println("name=\(name), age=\(age)")
    }
}

//let myPerson1 = MyPerson();
var myPerson1 = MyPerson();
myPerson1.set(name: "aa", age: 3)
myPerson1.show()

enum LightSwitch {
    case OFF,LOW,HIGH
    mutating func next(){
        switch self {
        case OFF:
            self = LOW
        case LOW:
            self = HIGH
        case HIGH:
            self = OFF
        }
    }
}

var light = LightSwitch.HIGH
light.next()

/*
    （5）类型方法
通过类名来调用的发给方法，就像类型属性一样。
类方法对应的关键字是static（结构体和枚举）class（类）
类方法里面不存在self
*/

struct TypeMethods {
    var p:Int = 0
    static var sp:Int = 0
    func method() {
        println("p=\(p), sp=\(TypeMethods.sp)")
    }
    static func staticMethod() {
        println("sp=\(TypeMethods.sp)")
    }
}

var tm = TypeMethods();
tm.method()
TypeMethods.staticMethod()


class TypeMethodsClass {
    var p:Int = 0
    class var sp:Int {
        return 10
    }
    func method() {
        println("p=\(p), sp=\(TypeMethods.sp)")
    }
    class func staticMethod() {
        println("sp=\(TypeMethods.sp)")
    }
}

/*
    （6）subsripts（下标）-访问对象转哦给你数据的快捷方式
    所谓下表脚本语法就是能够通过 实例【索引值】来访问实例中的数据
*/

let array = [1,2,3,4,5]
println(array[1])  // subcripts
let dict = ["1":1]
println(dict["1"])

/*
    subsripts 方法实现
*/

struct Student {
    let name:String = ""
    var math: Int = 0
    var chinese: Int = 0
    var english:Int = 0
    func scroeOf(course:String) ->Int? {
        switch course {
        case "math":
            return math
        case "chinese":
            return chinese
        case "english":
            return english
        default:
            return nil
        }
    }
    
    subscript(course:String) ->Int? {
        get {
            switch course {
            case "math":
                return math
            case "chinese":
                return chinese
            case "english":
                return english
            default:
                return nil
            }
        }
        set {
            switch course {
            case "math":
                math = newValue!
            case "chinese":
                chinese = newValue!
            case "english":
                english = newValue!
            default:
                println("key wrong")
            }
        }
    }
}
var xiaoli = Student(name: "list", math: 60, chinese: 90, english: 90)
println(xiaoli.scroeOf("math"))
println(xiaoli["math"])
xiaoli["math"] = 100
println(xiaoli["math"])


struct Mul {
    subscript (a:Int ,b:Int) ->Int{
        return a*b
    }
    
}
var mul = Mul()
mul[3,9]













