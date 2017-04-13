//: Playground - noun: a place where people can play

import UIKit

protocol Pet{
    
    var name: String{ get set }
    
    //协议可以有构造函数，依然不能指定实现方法
    init(name: String)
    
    func playWith()
    func fed()
}

class Animal{
    
    var type: String = "mammal"
}


// 如果一个类有继承的类，则父类必须放在前面
class Dog: Animal, Pet{
    
    // 如果protocol没有init(name)的要求，name有默认名字就够了
    var name: String = "Puppy"
    
    // 如果protocol有init，则在class中必须注明required,原因很简单，父类遵守了这个协议，他的子类也应该遵守
    
    required init(name: String){
        self.name = name
    }
    
    func playWith() {
        print("Wong")
    }
    
    func fed(){
        print("I love bones")
    }
}

final class Cat: Animal, Pet{
    
    var name: String = "Kitten"
    
    // 如果是final class, init可以没有required, 因为也不会再被继承了
    init(name: String){
        self.name = name
    }
    
    func playWith() {
        print("Meow")
    }
    
    func fed(){
        print("I love fish")
    }
}


class Bird: Animal{
    
    var name: String = "Little Little Bird"
    
    init(name: String){
        self.name = name
    }
}

