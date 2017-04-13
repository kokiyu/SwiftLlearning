//: Playground - noun: a place where people can play

import UIKit

// 函数的基本构建
func sayHello(name:String)->String{
    return "Hello" + name
    
}

print(sayHello(name: "小明"))

// 函数参数中包含可选型
func sayHelloTo( name: String? ) -> String{
    return "Hello " + (name ?? "Guest") //?? 有值就使用name，没有就使用Guest
}

var nickname : String? = nil

sayHelloTo(name: nickname)


// 没有参数与没有返回值的函数
func printHello(){
    print("Hello")
}

//显式声明没有返回值
// func printHello() -> ()
// func printHello() -> Void

// 函数命名
// 语意明确很简单
var arr = [1,2,3]
arr.append(4)
arr.contains(2)

// 蕴含是否有参数
arr.index(of: 3)

// 甚至蕴含参数的类型
arr.remove(at: 0)
arr.removeSubrange(0..<2)

// 甚至蕴含返回值
var str: NSString = "    Hello   !"
str.trimmingCharacters(in: NSCharacterSet(charactersIn: " !") as CharacterSet)