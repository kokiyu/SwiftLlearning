//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 1. 三目运算符
//question?anser1:anser2

var battery = 18
//变量可以不用给初值，但没有初值的时候，无法使用。
var batterColor:UIColor

if battery <= 20
{
batterColor = UIColor.red
}else{
    batterColor = UIColor.green
}

var phoneColor  = battery<=20 ? UIColor.red : UIColor.green
