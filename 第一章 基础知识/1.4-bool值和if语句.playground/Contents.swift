//: Playground - noun: a place where people can play

import UIKit

let imTrue:Bool = true
let imFalse = false

//如果加了小括号，只是声明优先级
//大括号不可以省略，尽管只有一句话
if imFalse{
    print("i'm true")
}
else if 3+4 == 7{
    print("3+4 = 7")
}

//'Int' is not convertible to 'Bool'
//swift对类型的要求非常严格
//if 1 {
//    print("true")
//}

//可以进行条件输出

let a = 1
if  a==1 {
    print("true")
}