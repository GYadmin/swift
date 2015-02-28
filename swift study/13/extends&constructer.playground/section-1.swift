// Playground - noun: a place where people can play

import UIKit

/*
    继承与构造方法
（1）指定构造与便利构造方法解析
（2）派生类的构造方法
（3）构造器链和安全检查深入解析
（4）派生类的构造方法默认继承
（5）构造方法的重写
（6）必须构造方法
（7）析构方法
*/

/*
    (1)指定构造与便利构造方法解析
*/

class AB {
    var a:Int
    var b:Int
    // 指定构造方法 不可以有 self.init()
    init(b:Int){
        self.b = b
        a = 0
        //self.init()
    }
    // 指定构造方法
    init(a:Int,b:Int){
        self.a = a
        self.b = b
        println("Class AB init")
    }
    // 便利构造方法 -> 通过调用其他的构造方法来实现初始化 self.init
    convenience init (a:Int){
//        self.a = a
//        b = 0
        self.init(a:a,b:0)
    }
    
    convenience init(){
        self.init(a:0)
    }
}

/*
    （3）构造器链 指定构造器与便利构造器调用规则
    指定构造器 必须调用其直接父类的指定构造器
    便利构造器 必须调用同类中定义的其他构造器
    便利构造器必须最终以调用一个指定构造器结束
    指定构造器总是向上代理
    便利构造器总是横向代理
*/

class CD:AB {
    var c: Int
    var d: Int
    //构造方法默认不会被继承，基类的存储属性只能通过基类的构造方法初始化
    //派生类引入的存储属性要先初始化，然后再调用父类的构造方法
    //不能是用便利构造方法，只能调用指定构造方法
    init(c: Int,d:Int){
        self.c = c
        self.d = d
        super.init(a: 0, b: 0)
    }
    // 便利构造器,只能通过调用本类的构造器完成初始化，不允许出现super.init
    convenience init(a: Int, b: Int,c: Int,d: Int) {
        self.init(c:c,d:d)
//        self.c = c
//        self.d = d
//        super.init(a: a, b: b)
    }
}

/*
    (4)两段式构造-构造过程可以划分为两个阶段
第一阶段，确保所有的存储属性都初始化完毕
第二阶段，对父类中的存储属性做进一步处理
    防止属性在被初始化之前访问，也可以防止属性被另外一个构造器意外的赋值
*/

class A {
    var a:Int
    init(a:Int){
        self.a = a
    }
}

class B:A {
    var b:Int
    init(a: Int,b:Int) {
        println("class b init step1")
        self.b = b
        
        super.init(a: a)
        
        println("class b init step2")
        
        if b > 1000 {
            self.a = 1000
        }
    }
}

class C:B {
    var c:Int
    init(a:Int,b:Int,c:Int){
        println("class C init step1")
        self.c = c
        super.init(a: a, b: b)
        
        println("class C init step2")
        if c > 1000 {
            self.a = 1000
            self.b = 1000
        }
    }
    
    convenience init(){
        self.init(a:0,b:0,c:0)
//        a = 10
//        b = 10
//        c = 10
    }
}

var c = C(a: 0,b: 0,c: 0)


/*
    （5）派生类构造方法方法定义时的编译安全检查
a 首先应将派生类引入的存储属性初始化，然后再向上代理
b 首先调用父类中的指定构造器实现父类中的属性初始化后，才可以访问父类中的属性
c 在便利构造方法中首先调用同类中的其他构造方法，再访问属性
d 在第一阶段完成之前 不能调用任何实例方法不能访问任何父类中定义的存储属性也不能引用self
*/

class Human {
    let name:String
    var age: Int
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    convenience init(){
        self.init(name:"",age:23)
    }
}


class Woman: Human {
    let haveBoby: Bool
//    override init(name:String, age: Int){
//        haveBoby = false
//        super.init(name: name, age: age)
//    }
    
    init(name: String, age: Int, haveBoby:Bool) {
        self.haveBoby = haveBoby
        super.init(name: name, age: age)
    }
    convenience override init(name: String, age: Int) {
        self.init(name:name,age:age,haveBoby:false)
    }
    
    convenience init() {
        self.init(name:"",age:123,haveBoby:false)
    }
}

class XY {
    var x: Int
    var y: Int
    init(x: Int, y:Int){
        self.x = x
        self.y = y
    }
    init(x: Int){
        self.x = x
        self.y = 0
    }
    convenience init(){
        self.init(x:0,y:0)
    }
}

// 派生类中属性都拥有缺省值 可以使用父类的构造方法

/*
    如果子类中没有定义任何的构造方法，且子类中所有的存储属性都有默认的缺省值，会自动继承父类中所有的构造方法
    如果子类中只是重写了父类中的某些指定构造方法，不管子类中的存储属性是否有缺省值，都不会继承父类中的其他构造方法
    如果子类中重写了父类中所有的指定构造方法，不管子类中的存储属性是否有缺省值，都同时会继承父类中所有的便利构造方法
*/
class XYZ: XY {
    var z :Int = 10
//    init(z:Int){
//        self.z = z
//        super.init(x: 0)
//    }
    override init(x: Int) {
        self.z = 10
        super.init(x: x)
    }
    
    override init(x: Int, y: Int) {
        self.z = 10
        super.init(x: x, y: y)
    }
    /*
    
    */
}

var xyz = XYZ()
var xyz2 = XYZ(x: 3)
var xyz3 = XYZ(x: 1, y: 2)


/*
    (9)必须构造器 构造方法所有的类的后续子类也得必须实现这个类
*/
class Some {
    var some:Int
    required init(){
       self.some = 0
    }
}

class ChildOfSome:Some {
    var sub: Int
    init(sub: Int){
        self.sub = sub
        super.init()
    }
    required init(){
        sub = 0
        super.init()
    }
}

class GrandSonOfSome:ChildOfSome {
    var grand: Int
    required init(){
        self.grand = 0
        super.init()
    }
}











