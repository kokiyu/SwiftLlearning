//: Playground - noun: a place where people can play

import UIKit

//逻辑完全一样，只是类型不同，有没有办法解决优化呢？


func swapTwoInt(_ a: inout Int , _ b: inout Int){
    (a,b) = (b,a)
}

var a: Int = 0
var b: Int = 6
swapTwoInt(&a, &b)
a
b

func swapTwoDouble(_ a: inout Double , _ b: inout Double){
    (a,b) = (b,a)
}


// 使用generic
// generic function
func swapTwoThings<T>(_ a: inout T , _ b: inout T){
    (a,b) = (b,a)
}

var hello = "Hello"
var bye = "Bye"
swapTwoThings(&hello, &bye)
hello
bye

swapTwoThings(&a, &b)
a
b

swap(&a, &b)