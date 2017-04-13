//: Playground - noun: a place where people can play

import UIKit

let money = 100
let price = 70

if money>=price{
    print("buy it")
}

let capacity = 30
let volume = 50

if money>=price && capacity>=volume {
    print("可以购买")
}

if money < price || capacity < volume{
    print("不可以购买")
}

if !(money>=price && capacity>=volume) {
    print("可以购买")
}

//&& 的优先级大于 ||
var isUserNameOk = false
var isPasswordOk = false

var isPhoneNumberOk = true
var isPhoneCodeOK = false

if (isUserNameOk && isPasswordOk) || (isPhoneCodeOK&&isPhoneNumberOk)
{
    print("登录成功")
}
else{
    print("登录失败")
}

