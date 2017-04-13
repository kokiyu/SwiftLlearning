//: Playground - noun: a place where people can play

import UIKit

//控制流-顺序结构，循环结构，选择结构

//1.1 for-in循环
for i in -99...99{
    i*i
}

var result = 1
var base = 2
var power = 10
//区间只能是整数，第一个变量可以省略
for _ in 1...power{
    result *= base
}
print(result)

//1.2 for循环 
//#Swift3更新# 在Swift3中，C风格的for循环被彻底取消了。普通的+1循环可以简单的使用for in配合区间运算符完成。但是更复杂的循环呢？对于反向遍历的循环，可以使用reversed()；对于其他循环，可以使用stride函数。具体怎么使用？我重新写了一个Playground，大家可以在这里学习：https://github.com/liuyubobobo/Play-with-Swift-3/blob/master/04-Control-Flow/01-3-Loop-for-in-Swift3.playground/Contents.swift

//swift3.0已经摈弃了这种C语言的写法
//for(var i = -99;i<=99;i+=1){
//    i*i
//}

//1.3 反向遍历
for i in (0...10).reversed(){
    i  // 打印结果为10-0
    
}


// 在swift3中怎么进行区间运算符无法覆盖的特殊的遍历操作？
// 可以使用reverse和stride
// 反向遍历可以使用reversed
// 注意...和..<在使用reversed()时的区别
print("for i in (1...10).reversed()")
for i in (1...10).reversed(){
    print(i)
}

print("for i in (1..<10).reversed()")
for i in (1..<10).reversed(){
    print(i)
}

print("\n=====================\n")

// 使用stride
// 注意参数to和through的区别
print("for i in stride(from:0, to:10, by:2)")
for i in stride(from:0, to:10, by:2){
    print(i)
}

print("for i in stride(from:0, through:10, by:2)")
for i in stride(from:0, through:10, by:2){
    print(i)
}

print("for i in stride(from:10, to:0, by:-1)")
for i in stride(from:10, to:0, by:-1){
    print(i)
}

print("for i in stride(from:10, through:0, by:-1)")
for i in stride(from:10, through:0, by:-1){
    print(i)
}

print("for i in stride(from:0, to:10, by:0.1)")
for i in stride(from:0, to:10, by:0.1){
    print(i)
}
