//: Playground - noun: a place where people can play

import UIKit

// 生成随机数组

var arr:[Int] = []
for _ in 0..<100{
    arr.append(Int(arc4random())%1000)
}

arr

// 默认排序
arr.sort()
arr

//排序并改变数组本身
//arr.sortInPlace()
//arr


//如果大家使用的是swift3.0版本，那么需要注意：
//2.0版本中的方式是 sort() 和 sortInPlace()
//而在3.0版本中以上方法被修改为 sorted() sort()
//新版中 sorted()是不会改变原数组的值，而sort()是会改变原数组的值，这点与2.0是不一样的

// 在排序中使用函数参数
func biggerNumberFirst( a: Int , _ b: Int) -> Bool{
    //    if a > b{
    //        return true
    //    }
    //    return false
    
    return a > b
}

arr.sorted(by: biggerNumberFirst)

func cmpByNumberString( a: Int , _ b: Int ) -> Bool{
    
    return String(a) < String(b)
}

arr.sorted(by:cmpByNumberString )

func near500(a:Int , _ b:Int)->Bool{
    
    return abs(a-500) < abs(b-500) ? true : false
}

arr.sorted(by:near500)
