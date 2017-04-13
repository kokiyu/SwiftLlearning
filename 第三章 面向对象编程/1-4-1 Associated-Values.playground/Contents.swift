//: Playground - noun: a place where people can play

import UIKit

//本章介绍枚举的关联值

//Raw Value 作为初始值是无法改变的

enum Coin:Int{
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter = 25
}

// Associate Value 和 Raw value 只能存在一个
enum ATMStatus{
    case Success(Int)
    case Error(String)
    case Waiting    // 可以没有Associate Value
}

// 使用 Associate Value
var balance = 1000

func withdraw( amount: Int ) -> ATMStatus{
    if balance >= amount{
        balance -= amount
        return .Success(balance)
    }
    else{
        return .Error("Not enough money")
    }
}

let result = withdraw(amount: 100)

// 解包相应的 Associate Value
switch result{
    
//这样的写法 只是为了获得枚举里面的关联值，跟拿到函数的返回值类似
case let .Success(newBalance):
    print("\(newBalance) Yuan left in your account.")
case let .Error(errorMessage):
    print("Error: \(errorMessage)")
case .Waiting:
    print("Waiting for processing")
}

// 忽略相应的 Associate Value
switch result{
case .Success:
    print("Success")
case .Error:
    print("Error")
case .Waiting:
    print("Waiting")
}
