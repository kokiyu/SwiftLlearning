//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//懒加载
//1. 方便用户进行加载，没必要每次都进行计算
//2. 在初始化中加载，用户有可能不会使用

//延迟属性应用比较多

class ClosedRange{
    
    let start: Int
    let end: Int
    
    var width: Int{
        return end - start + 1
    }
    
    // 如果sum是computed property，每次调用都会计算
    //    var sum: Int{
    //        var res = 0
    //        for i in start...end{
    //            res += i
    //        }
    //        return res
    //    }
    
    // 如果在init中计算，init太耗时
    //    var sum = 0
    
    // 最佳方案，使用懒加载
    lazy var sum: Int = {
        //print("start computing sum value")
        var res = 0
        for i in self.start...self.end{
            res += i
        }
        return res
    }()
    
    init?( start:Int , end:Int ){
        if start > end{
            return nil
        }
        
        self.start = start
        self.end = end
        
        //        for i in start...end{
        //            sum += i
        //        }
    }
}


if let range = ClosedRange(start: 0, end: 10_000){
    range.width
    range.sum
    range.sum
}