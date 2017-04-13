//: Playground - noun: a place where people can play

import UIKit

// 使用特殊值作为“无”可能产生歧义
//var errorCode : Int = 404
//errorCode = 0

//swift中,开发者认为应该使用nil来代表“没有这个概念”,而不是0。所以nil在Swift中是一个特殊的类型,而不是0.

//nil的存在一定是和其他类型一起共存的.
// 使用可选型
var errorCode:Int? = 404
errorCode = nil
print(errorCode as Any)

// Int? 和 Int 不是一种类型
let imInt = 405
errorCode = imInt

//可选类型不可以赋值给不是可选类型的变量
//imInt = errorCode

// 必须显示地声明可选型的类型
//var imOptional = nil
var imOptional: String? = nil