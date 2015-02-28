// Playground - noun: a place where people can play

import UIKit

/*
    Swift 内存管理
*/

/*
    (1)析构方法
    对象的内存被回收前夕被隐式调用的方法。主要执行一些额外的操作
    比如：关闭文件，断开网络，释放对象持有的一些资源
*/

class FileHandler {
    var fd: Int32? //文件描述符
    init(path:String) {
        var ret = open(path,O_RDONLY)
        if(ret == -1){
            fd = nil
        }else{
            fd = ret
        }
    }
    
    deinit {
        if let ofd = fd {
            close(ofd)
        }
        println("object be released")
    }
}

// 对象（引用类型）何时被销毁，当对象没有任何引用的时候
var ofh:FileHandler? = FileHandler(path: "/etc/passwd")
ofh = nil

/*
    (2) 析构方法的自动继承 父类的析构方法会被自动调用 不需要子类管理
*/

class SomeClass {
    deinit {
        println("SomeClass deinit!")
    }
}

class SubOfClass:SomeClass {
    deinit {
        println("SubOfClass deinit!")
    }
}

var sub1:SubOfClass? = SubOfClass()
sub1 = nil

/*
    (3)Swift语言的内存管理分析
    内存管理的对象-引用类型的对象
    内存管理的原则：当没有任何引用指向某个对象的时候，系统会自动销毁改对象
    如何做：ARC
*/

class MemArc {
    deinit {
        println("deinit!")
    }
}

var mem1 = MemArc()
var t1 = mem1
var mem2 = MemArc()

//m1 m2 指向同一个对象
mem1 = mem2
t1 = mem2

/*
    (4)weak 引用
*/

/*
    (5)unowned引用（弱引用）
*/
class Ref {
    deinit {
        println("Ref deinit!")
    }
    func test() {
        println("Test")
    }
}

//强引用
var strongRef = Ref() //1
var strongRef1 = strongRef //2

//弱引用是可选类型
weak var weakRef = Ref()

if let wr = weakRef {
    wr.test()
}

//unowned var unownedRef:Ref = Ref()//无主引用

//unownedRef.test()

/*
    (6) 循环强引用
    ARC不是万能的，它可以很好的解决内存过早释放的问题，但是在某些场合下不能很好的解决内存泄漏的问题。
*/

class Person {
    let name:String
    init(name:String){
        self.name = name
    }
    var apartment:Apartment?
    deinit {
        println("\(name) is being deinitialized")
    }
}

class Apartment {
    let number: Int
    init(number:Int){
        self.number = number
    }
    weak var tenant:Person?
    deinit {
        println("Apartment #\(number) is being deinitialized")
    }
}


var john: Person?
var number73:Apartment?

john = Person(name: "joho Appleseed")
number73 = Apartment(number: 73)

john!.apartment = number73
number73!.tenant = john

// 两个对象没有被销毁 但是我们没有办法访问 他们了
john = nil
number73 = nil


/*
    unowned解决循环强引用
*/

class Customer {
    let name:String
    var card: CreditCard?
    init(name:String) {
        self.name = name
    }
    deinit {
        println("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number:UInt64,customer:Customer){
        self.number = number
        self.customer = customer
    }
    deinit {
        println("Card #\(number) is being deinitialized")
    }
}

var john1:Customer?
john1 = Customer(name: "John Appleseed")
john1!.card = CreditCard(number: 123_12312312_12312, customer: john1!)






