// Playground - noun: a place where people can play

import UIKit

/*
    （1）继承语法
继承是面向对象最显著的一个特性，继承是从已有的类中派生出新的类，新的类能够吸收已有类的行为，并能扩展新的能力。
*/

/*
（2）super关键字
派生类中的方法实现中，可以使用super关键字来引用积累的属性和方法
*/

/*
(3)方法重写
*/
class Human{
    var name:String = ""
    var id:Int = 0
    func eat(){
        println("eat")
    }
    func drink(){
        println("drink")
    }
    func sleep(){
        println("sleep")
    }
}

class Woman:Human{
    func birth(){
        println("birth")
    }
    // 需要重写 要加override关键字
    override func eat() {
        println("\(name) eat")
    }
    // 派生类中使用基类的方法活属性
    func eatAndSleep(){
        eat()
        super.eat()
        super.sleep()
    }
}

var woman1 = Woman()
woman1.name = "aa";
woman1.sleep()
woman1.eat()
woman1.birth()
woman1.eatAndSleep()

/*
    (4) 重写属性
*/

/*
    （5）属性重写限制
1.属性重写不能有get 没有set 反过来也不行
2.只读的计算属性可以升权

*/
class Father {
    var storeProperty:Int = 0
    var conputeProperty:Int {
        get {
            return 0
        }
        set {
            println("In father Class: set \(newValue)")
        }
    }
}

class Child: Father {
    // 可以将一个父类的存储属性重写成计算属性，不可以记那个存储属性又写成存储属性
    override var storeProperty:Int {
        get {
            return 10
        }
        set {
            println("In child class set storeProperty with value :\(newValue)")
        }
    }
    //可以将计算属性重写
    override var conputeProperty:Int {
        get {
            return 10
        }
        set {
            println("In Child class :set computeProperty with value \(newValue)")
        }
    }
}

let ch = Child()
ch.storeProperty = 100


/*
    (6)重写属性观察器
1.只能给非lazy属性的变量存储属性设定观察器，不能给计算属性设定属性观察器
*/

class Observer {
    var storeProperty:Int = 0 {
        willSet{
            
        }
        didSet {
            
        }
    }
    var computeProperty:Int {
        get{
            return 0
        }
        set {
            println("Do nothing")
        }
    }
}

class ChildOfObserver:Observer {
    //可以重写父类中存储属性中的属性观察器
    override var storeProperty:Int {
        willSet{
            println("will set")
        }
        didSet{
            println("did set")
        }
    }
    // 可以在子类中重写父类的计算属性的属性观察器
    override var computeProperty:Int {
        willSet{
            println("compute willset")
        }
        didSet{
            println("compute didSet")
        }
    }
}

let co = ChildOfObserver()
co.storeProperty = 10
co.computeProperty = 20

/*
    (7)防止重写
    同java
*/

class Human1{
    final var name:String = ""
    var id:Int = 0
    func eat(){
        println("eat")
    }
    func drink(){
        println("drink")
    }
    func sleep(){
        println("sleep")
    }
}

class Woman1:Human1{
    func birth(){
        println("birth")
    }
    // 需要重写 要加override关键字
    override func eat() {
        println("\(name) eat")
    }
    // 派生类中使用基类的方法活属性
    func eatAndSleep(){
        eat()
        super.eat()
        super.sleep()
    }
}

