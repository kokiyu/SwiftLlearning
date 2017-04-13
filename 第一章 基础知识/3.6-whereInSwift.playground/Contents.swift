//: Playground - noun: a place where people can play

import UIKit

//1.where 语句
let point = (3,3)
switch point{
case let (x,y) where x == y:
    print("It's on the line x == y!")
case let (x,y) where x == -y:
    print("It's on the line x == -y!")
case let (x,y):
    print("It's just an ordinary point.")
    print("The point is ( \(x) , \(y) )")
}
//2.if case 语句
//if case 后面跟模式
let age = 19
switch age {
case 10...19:
    print("You'are a teenager.")
default:
    print("You're not a teenager")
}

//等同于
if case 10...19 = age{
    print("You'are a teenager.")

}

// 在swift3中，使用if case这样的模式匹配，where关键字可以省略，转而使用,(逗号)代替即可。
//if case 10..19 = age where age >= 18
if case 10...19 = age , age >= 18{
    print("You'are a teenager and in a colleage.")
    
}

let vector = (4,0)
//if case ( let x , 0 ) = vector where x > 2 && x < 5{
if case ( let x , 0 ) = vector , x > 2 && x < 5{
    print("It's the vector!")
}

//3.for in循环使用where的情况
for i in 1...100{
    if i % 3 == 0 {
        print(i)
    }
}

//也可省略的写为 for i in 1...10 where i % 3 == 0
for case let i in 1...100 where i % 3 == 0 {
    print(i)
}
