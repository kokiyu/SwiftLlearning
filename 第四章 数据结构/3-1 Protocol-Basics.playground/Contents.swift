//: Playground - noun: a place where people can play

import UIKit

//如果这个协议想只能被类Class遵守，就写成protocol Pet:Class
protocol Pet{
    
    // 对于属性，不能有初始值
    var name: String{ get set }// = "My Pet"
    // 统一使用var关键字
    var birthPlace: String{ get }
    // 对于属性，get,set隐藏了实现细节，可以使用let实现只读，也可以使用只有get的计算型属性
    
    
    // 对于方法，不能有实现
    func playWith()
    
    // 对于方法，不能有默认参数（默认参数就是一种实现）
    //func fed(food: String = "leftover")
    func fed()
    func fed(food: String)
    
    // 可以使用mutating关键字，强调这个方法应该修改其内容
    //只有结构体可以使用mutating关键字，类不能使用
    mutating func changeName(newName:String)
    
    // 不可以设置访问控制
    // 协议就是协议，如果开发者可以看见协议，就可以看见协议里的任何内容
}

// 不能实例化Pet
//var pet = Pet()


// 协议的实现，实现协议规定的所有属性和方法即可
struct Dog: Pet{
    
    // 可以使用计算型属性
    //    private var myDoggyName = "Puppy"
    //    var name: String{
    //        get{
    //            return myDoggyName
    //        }
    //        set{
    //            myDoggyName = newValue
    //        }
    //    }
    var name: String
    
    // protocol的read-only，对一个具体类的实现，不一定只读，但是作为Pet是只读的！
    //let birthPlace: String
    var birthPlace: String = "Beijing"
    
    
    func playWith() {
        print("Wong!")
    }
    
    func fed(){
        print("I want a bone.")
    }
    
    // 在具体实现上可以加默认参数
    func fed(food: String = "Bone"){
        
        if food == "Bone"{
            print("Happy")
        }
        else{
            print("I want a bone")
        }
    }
    
    // 对于class，不需要mutating关键字
    mutating func changeName(newName: String) {
        name = newName
    }
}

//Dog 遵守了只读协议，但是它可以有自己的规则，就是除了可以读，还可以写。所以给只读方法，添加set方法，不会报错

let myDog:Dog = Dog(name: "summer", birthPlace: "beijing")


// 从Pet的角度看，myDog的birthPlace是只读的！
// 在这里，Pet作为了一个类。协议，本身可以被当作一个类型来看待，但是和遵守协议实现的类等有所区别；


let aPet: Pet = myDog
//aPet.birthPlace = "shanghai"
