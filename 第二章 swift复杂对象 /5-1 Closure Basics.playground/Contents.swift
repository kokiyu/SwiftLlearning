//: Playground - noun: a place where people can play

import UIKit

//闭包 类似 函数,但又不完全相同。类似于Block 和 方法

var arr:[Int] = []
for _ in 0..<100{
  arr.append(Int(arc4random()) % 1000)
}


// 定义比较函数完成自定义排序
func biggerNumberFirst(a:Int , _ b:Int) -> Bool{
    return a > b
}

arr.sorted(by:biggerNumberFirst)


//闭包本质就是函数，所谓的匿名函数，不需要函数名称和函数外部名，格式如下：{函数的写法 in 里面的逻辑}
arr.sort(by: {
    
    (a:Int,b:Int)->Bool in
    
     return a < b

})
