//: Playground - noun: a place where people can play

import UIKit

let score = 90

//1.对区间进行判断
switch score{
case 0:
    print("You got an egg!")
case 1..<60:
    print("You failed.")
case 60:
    print("Just passed")
case 61..<80:
    print("Just so-so")
case 80..<90:
    print("Good")
case 90..<100:
    print("Great!")
case 100:
    print("Perfect!")
default:
    print("Error score.")
}

//2.对元祖进行判断
let vector = (1,1)
switch vector{
case (0,0):
    print("It's origin!")
case (1,0):
    print("It an unit vector on the positive x-axis.")
case (-1,0):
    print("It an unit vector on the negative x-axis.")
case (0,1):
    print("It an unit vector on the positive y-axis.")
case (0,-1):
    print("It an unit vector on the negative y-axis.")
default:
    print("It's just an ordinary vector.")
}

//使用下划线忽略不必要的值
let point = (1,1)
switch point{
case (0,0):
    print("It's origin!")
case (_,0):
    print("It on the x-axis.")
case (0,_):
    print("It on the y-axis.")
default:
    print("It's just an ordinary point.")
}

//可以直接使用元祖进行switch的判断
//也可以在case语句中使用...的集合

switch point{
case (0,0):
    print("It's origin!")
case (_,0):
    print("It on the x-axis.")
case (0,_):
    print("It on the y-axis.")
case (-2...2,-2...2):
    print("It's near the origin.")
default:
    print("It's just an ordinary point.")
}

//let point :(x:Int,y:Int) = (1,1)
switch point{
case (0,0):
    print("It's origin!")
case(_,0):
    print("\(point.0),\(point.1) is on the x-axis.")
case(0,_):
    print("\(point.0),\(point.1) is on the y-axis.")
case (-2...2,-2...2):
    print("\(point.0),\(point.1) is near the y-axis.")
default:
    print("It's just an ordinary point.")
}

// Value binding
//switch直接进行解包
//这四种case 已经涵盖了所有的可能
switch point{
case (0,0):
    print("It's origin!")
case (let x,0):
    print("It on the x-axis.")
    print("The x value is \(x)")
case (0,let y):
    print("It on the y-axis.")
    print("The y value is \(y)")
case (let x,let y):
    print("It's just an ordinary point.")
    print("The point is ( \(x) , \(y) )")
}

//3. fallthrough 的用法
let point1 = (0,0)

switch point1{
case (0,0):
    print("It's origin!")
    fallthrough
case (_,0):
    print("It's on the x-axis.")
    fallthrough
case (0,_):
    print("It's on the y-axis.")
    fallthrough
case (-2...2,-2...2):
    print("It's near the origin.")
    fallthrough
default:
    print("It's just an ordinary point.")
}


// 注意：fallthrough 并不会判断下一个case（或者default）是否符合switch的条件，而是直接跳到下一个case（或者default）。
// 所以，首先，fallthrough不能跳转到一个有逻辑的case中
// 下面的程序报错
//let num = 3
//switch num{
//case -3...3:
//    print("small number")
//    fallthrough
//case let x where x%2 == 1:
//    print("odd number")
//}
// 其次，不要用switch和fallthrough组合复杂的判断逻辑
// fallthrough应该用于从一般到特殊的判定
// 以下代码的输出，就是错误的。
let num = 3
switch num{
case -3...3:
    print("small number")
    fallthrough
case 0:
    print("zero")
    fallthrough
case -100..<0:
    print("negative number")
    fallthrough
case 1...100:
    print("positive number")
    fallthrough
default:
    print("a number")
}
