//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<100{
    arr.append(Int(arc4random())%1000)
}

//abs是绝对值
arr.sorted{ a , b in
    abs(a-500) < abs(b-500)
}

// 数值捕获
var num = 300
arr.sort{ a , b in
    abs(a-num) < abs(b-num)
}
