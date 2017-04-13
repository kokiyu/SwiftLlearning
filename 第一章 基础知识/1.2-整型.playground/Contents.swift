//: Playground - noun: a place where people can play

import UIKit


 //1. 基本数据类型包括: Int(UInt, Int8, Int16, Int32, Int64), Float, Double, Boolean, String, Tuple

var imInt:Int = 80

//2. 使用 Int.max 和 Int.min 查看整型的存储范围
//Int的最大值
Int.max

//Int的最小值
Int.min

//3. swift 是一种安全的语言, 在编译阶段就可判断变量是否溢出
//swift是种安全的语言，溢值的时候不像以前一样，非要运行了才报错
//imInt = 99999999999999999999999999999999999999999999999

//无符号整形
var imUInt:UInt = 80
UInt.max
UInt.min

//Int8
Int8.max
Int8.min

//UInt8
UInt8.max
UInt8.min

//Int16
Int16.max
Int16.min

//UInt16
UInt16.max
UInt16.min

//Int32
Int32.max
Int32.min

//UInt32
UInt32.max
UInt32.min

//Int64
Int64.max
Int64.min
//UInt64
UInt64.max
UInt64.min

let a = 4
//4. 使用 0b, 0o, 0x 表示不同进制的整型字面值

let decimalInt:Int = 17
let binartInt:Int = 0b10001
let octalInt:Int = 0o21
let hexInt:Int = 0x11

//5. 使用下划线将整型字面值进行分割, 便于阅读
//可以用下划线进行数值的分割，但是不影响数的大小
let bigNum = 100_0000
let bignum = 1_000_000

