//: Playground - noun: a place where people can play

import UIKit

// 有一个默认参数
func sayHelloTo( name: String , withGreetingWord greeting: String = "Hello" ) -> String{

    return "\(greeting), \(name)!"
}

sayHelloTo(name: "Playground", withGreetingWord: "Hi")
sayHelloTo(name: "yuuuuuu")

// 有多个默认参数
func sayHelloTo( name: String , withGreetingWord greeting: String = "Hello" , punctuation: String = "!") -> String{
    
    return "\(greeting), \(name)\(punctuation)"
}

sayHelloTo(name: "Playground", withGreetingWord: "Hi", punctuation: "!!!")

// 最好将默认参数放在最后, 但不是必须

// 第一个参数含有默认参数值
func sayHello( to name: String = "Playground" , withGreetingWord greeting: String = "Hello" , punctuation: String = "!") -> String{
    
    return "\(greeting), \(name)\(punctuation)"
}

sayHello()

// print是一个非常好的有两个默认参数的函数
print("Hello", 1, 2, 3, separator:",", terminator:".")
