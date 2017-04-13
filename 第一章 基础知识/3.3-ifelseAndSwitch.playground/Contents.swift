//: Playground - noun: a place where people can play

import UIKit

//选择结构
// if - else
let rating = "A"
if rating == "A"{
    print("Great!")
}
else if rating == "B"{
    print("Just so-so")
}
else if rating == "C"{
    print("It's Bad")
}
else{
    print("Error")
}


// switch
// 在swift里面，switch是自带了Break,所以不会产生连带往下跳的情况
// 在swift里面，switch必须把所有的情况穷举，不可以省略default
switch rating{
case "A":
    print("Great!")
case "B":
    print("Just so-so")
case "C":
    print("It's Bad")
default:
    print("Error")
}
//如果希望是两个条件都只执行一个case，可以写
//如果希望default不需要执行特别的操作，可以直接写break，或者是(),()在swift里有空语句的含义
switch rating{
case "A","a":
    print("Great!")
case "B","b":
    print("Just so-so")
case "C","c":
    print("It's Bad")
default:
()
}

//C语言里的switch只能判断整型，而switch可以进行各种类型的判断
// 使用switch判断浮点数
let x = 2.8
switch x{
case 2.8:
    print("I'm 2.8")
default:
    print("I'm not 2.8")
}


// 使用switch判断布尔值
//尽管没有使用default,但是已经把所有的情况都穷举出来了，所以没有问题
let y = true
switch y{
case true:
    print("I'm true")
case false:
    print("I'm false")
}


