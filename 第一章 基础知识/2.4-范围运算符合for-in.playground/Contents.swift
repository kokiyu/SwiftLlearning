//: Playground - noun: a place where people can play

import UIKit

//区间运算符
//1.闭区间运算符[a,b] a...b

//2.前闭后开区间运算符 [a,b) a..<b

//for in 循环
//在 for-in里面，不允许中间跳过循环，这里的index是常量，无法改变
for index in 1...10{
    index
}

for index in 0..<10 {
    index
}

let courses = ["初一","初二","初三","初四"]
for i in 0..<courses.count{
    print(courses[i])
}
