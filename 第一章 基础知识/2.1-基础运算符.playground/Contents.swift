//: Playground - noun: a place where people can play

import UIKit

//1.赋值运算符
// = 仅用于赋值
// 禁止使用 a = 1 之类的判断语句

//+a 取正， -a取负
//单目运算符不允许脱离变量，必须紧挨。并且不影响原变量
var a = 1
+a
-a
a += 1 //a++,++a


var x=10,y=3,z=0
x + y
x - y
x * y
x / y
x % y

//进行强转的时候，两个都需要
Double(x)/Double(y)

//x/z
//x%z

let u = 2.5
let v = 1.2

//取余算法是不能作用于浮点型的，如果这样就会报错 CGFloat(u)%v 正确的做法是：
var result = u.truncatingRemainder(dividingBy: v)
