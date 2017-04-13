//: Playground - noun: a place where people can play

import UIKit


var age: Int? = 17
print(age as Any)

age = nil
print(age as Any)

// Optional实际是一个enum
var website: Optional<String> = Optional.some("imooc.com")
print(website as Any)

website = Optional.none
print(website as Any)

website = .some("imooc.com")
website = .none

website = "imooc.com"
website = nil

// 从enum的角度看Optional的解包
switch website{
case .none:
    print("No website")
case let .some(website):
    print("The website is \(website)")
}

// Swift为Optional的解包设置的语法
if let website = website{
    print("The website is \(website)")
}
else{
    print("No website")
}