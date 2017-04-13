//: Playground - noun: a place where people can play

/*
 #swift3更新# 在这一小节所介绍的浮点数中，Swift3引入了FloatingPoint这样的一个协议，来尝试统一不同的浮点类型。在这个协议下，我们写一个函数，可以不用指定这个函数到底是Float还是CGFloat或者是Double（其实还有更多浮点类型），只需要指定他是浮点型FloatingPoint就好了。这部分知识内容需要大家了解这套课程第二三四季的内容，再回过头来看。我把这部分内容新添加在了一个Playground中，写了一些示例代码。有兴趣的同学可以在这里了解一下这个FloatingPoint协议。http://tinyurl.com/zr9mykq
 */

import UIKit

//1.浮点数
let imFloat: Float = 3.1415926
let imDouble:Double = 3.1415926

//会自行判断为Double
let x = 3.1415926

//1.25的十次方
var a = 1.25e10
//1.25的负八次方
var b = 1.25e-8

//同样可以使用下划线使数据更好读
var c = 1_000_000.000_000_1

//2.类型转化
UInt8.max
let x1: UInt16 = 100
let y: UInt8 = 20
//swift要求写出强制转换，另外会有潜在的bug出现，例如UInt8的max是255，将x1设置为大于255的数，再进行UInt8的相加的时候，会出现溢出错误

let m = x1 + UInt16(y)
let n = UInt8(x1) + y

let a1:Double = 3.0
let b1:Float = 0.3
//必须转换类型才能进行加减
//a1+b1
a1 + Double(b1)
Float(a1) + b1

let w:Float = 3

//小数点后的位数会被丢掉
let v:Int = Int(3.2)

let integer = 3
let fraction = 0.1415926

let pi = Double(integer) + fraction

//3.特殊浮点数CGFloat，专门用于图像的浮点数值
let red:CGFloat = 0.2
let green:CGFloat = 0.5
let blue:CGFloat = 0.3

//还是需要强制转换
UIColor(red:red, green:green, blue:blue, alpha:1.0)



