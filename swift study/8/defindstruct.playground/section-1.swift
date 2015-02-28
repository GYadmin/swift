// Playground - noun: a place where people can play

import UIKit
/*
    第八章：结构体和类的初步
（1）结构体定义
（2）结构体实例和属性访问
（3）结构体的构造器
（4）结构体加上方法
（5）结构体是值引用
（6）类的定义
（7）类和结构体的比较
（8）类是引用类型
（9）恒等运算符
*/
class Rect {
    var width:Double = 0.0
    var height:Double = 0.0
    func getWidth() -> Double{
        return width
    }
    func show(){
        println("widht=\(width),height=\(height)")
    }
}

var rect:Rect = Rect()
rect.height = 10
rect.width = 10

//var rect1:Rect = Rect(width: 10, height: 2)
var rect1:Rect = Rect()
rect1.getWidth()
rect1.show()


var rect2: Rect = rect1;
rect1.width = 100
rect1.show()
rect2.show()

rect2 === rect1




