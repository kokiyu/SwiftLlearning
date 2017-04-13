//: Playground - noun: a place where people can play

import UIKit


//
var arr:[Int] = []
for _ in 0..<10{
    arr.append(Int(arc4random())%1000)
}

arr.sorted(by:{ a , b in return a > b})
arr
// Trailing Closure
//如果这个闭包参数是函数的最后一个参数，开发者可以将其拉出小括号，在函数尾部实现闭包代码
arr.sorted(){ a , b in
    return a > b
}

//闭包结尾
func func2(param1:Int,param2:()->Void)->Void{
    param2()
    print("调用了func2函数")
}
func2(param1: 0){
    print("闭包中的内容")
}

//如果一个函数中只有一个参数，且这个参数是一个闭包，那么开发者使用闭包结尾这种写法，完全可以将函数的参数列表小括号也省略掉
func func3( param:()->Void)->Void{
    param()
    print("调用了func3函数")
}
func3{
    print("闭包中的内容")
}


//arr.sorted{ a , b in
//    return a > b
//}

//map将数组中的每一个值都按一种方式转回去
arr.map{number -> String in
    
    var number = number
    
    var res = ""
    repeat{
        res = String(number%2) + res
        number /= 2
    }while number != 0
    return res
}
