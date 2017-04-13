//: Playground - noun: a place where people can play

import UIKit

//struct 是 Value Type(值类型)，就是IDE将他作为值来处理的
struct Point{
    var x = 0
    var y = 0
}

//值类型的特点，赋值就是拷贝,对于值类型而言，p1 和 p2 是两个不同的东西
var p1 = Point()
var p2 = p1

p2.x += 1

print(p2)
print(p1)

//swift中的这三个容器也是值类型
//Array
//Dictionary
//Set

//String