// Playground - noun: a place where people can play

import UIKit

/*
    构造方法
（1）构造方法初步
（2）缺省构造方法
（3）结构体构造方法
（4）可选属性与构造方法
（5）常量属性和构造方法
（6）代理构造器
*/

/*
    实例对象的内容时使用构造方法
    结构体 枚举 类 都需要构造方法
    构造方法只是初始化 不负责分配内容
*/

class MyPoint {
    var x:Int
    var y:Int = 0
    
    func description() -> String {
        return "x=\(x) ,y=\(y)"
    }
    //构造方法
    init(x:Int, y:Int){
        self.x = x
        self.y = y
    }
}

//构造一个对象：（1）给对象分配内存 （2）初始化这块儿内存（构造方法）
var p0 = MyPoint(x:1,y:2)

class Human {
    let name: String
    var age: Int
    var creadt:String?
    init(name:String,age:Int){
        self.name = name
        self.age = age
    }
}

var person = Human(name: "ff", age: 10)

struct Rect {
    var width:Double
    var height:Double
    // 如果我们提供了一个构造器，那么系统的构造器失效
//    init(){
//        
//    }
}
//结构体会提供系统会提供一个成员逐一构造器
var rect = Rect(width: 0.0, height: 0.0)


/*
    (7) 值类型构造器代理
*/

struct Segment {
    var origin:Double
    var end:Double
    init(origin:Double,end:Double){
        self.origin = origin
        self.end = end
    }
    init(){
//        origin = 0.0
//        end = 0.0
        self.init(origin:0.0,end:0.0)
    }
    init(origin:Double,length:Double){
//        self.origin = origin
//        self.end = origin + length
        self.init(origin:origin,end:length+origin)
    }
    
    func description() -> String{
        return "\(origin),\(end)"
    }
}

var seg0 = Segment(origin: 0.0, end: 0.0)
var seg1 = Segment()
var seg2 = Segment(origin: 0.0, length: 0.0)


