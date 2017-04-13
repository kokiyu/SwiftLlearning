//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var name: String
    
    init(name: String){
        self.name = name
        print("Person", name, "is initialized")
    }
    
    deinit{
        print("Person", name, "is being deinitialized!")
    }
}

var person1: Person? = Person(name: "liuyubobobo")
var person2: Person? = person1
//var person3: Person? = person1
var person3: Person? = person2

//如果p2 和 p3 都指向 p1 ,那p1的内存空间一共有三个引用计数
//p1 被释放掉了，p2 和 p3 依然引用了p1 的内存空间，所以 p1 没有被释放掉
// 就算p3 指向了 p2 ，行为依然没有发生改变，依然是p3
person1 = nil

person2?.name

//person2 = nil
//person3 = nil
