//: Playground - noun: a place where people can play

import UIKit


//inout 可以理解为，进去之后还要出来
func swapTwoInts(_ a:inout Int ,_ b:inout Int ){
    
    // 尽量使用let
    //let t:Int = a
    //a = b
    //b = t
    
    (a,b) = (b,a)
}

var a:Int = 1
var b:Int = 2
swapTwoInts(&a, &b)
a
b

swap(&a, &b)
a
b