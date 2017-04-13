//: Playground - noun: a place where people can play

import UIKit

// Int()


var ageInput: String = "16"

// 此时的age是一个可选类型，因为ageInput不一定是数字类型，不一定能转换成功
let age = Int(ageInput)

if let age = Int(ageInput) , age < 20{
    
    print("You're a teenager!")
}

var greetings:String = "hello"

greetings.range(of: "ll")
var x = greetings.range(of: "mm")
