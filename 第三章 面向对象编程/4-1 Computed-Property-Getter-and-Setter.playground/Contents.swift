//: Playground - noun: a place where people can play

import UIKit

//本节新概念:计算型的属性

struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size{
    var width = 0.0
    var height = 0.0
}

class Rectangle{
    
    var origin = Point()
    var size = Size()

    init( origin: Point , size: Size ){
        self.origin = origin
        self.size   = size
}
    //计算机属性的几个特点:
    //1.必须声明成var
    //2.显示声明
    var center: Point{
    
        //get表示获取时所走的逻辑
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        
        //set 赋值时所走的逻辑
        // (newCenter)可以被省略
        // 在setter的{}中用默认名称newValue代替传入值
        
        //这里的示例代表传入新的中心点，改变origin的点

        set(newCenter){
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
 /*
        set{
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
   
 }
 */
    }
        //不要求每个计算型变量都要写getter 和 setter
        var area: Double{
            //这里相当于只声明了getter
            
        return size.width * size.height
        }
    
    
}

var rect = Rectangle( origin: Point() , size: Size(width: 10, height: 5 ) )
rect.center

rect.origin = Point(x: 10, y: 10)
rect.center

rect.center = Point()
rect.area






// 没有设立setter的computed property为只读属性，不可以被赋值
//rect.area = 100.0

// UIKit的正方形结构基本就是上面的形式 - CGRect
// 区别：是一个struct
var rect2 = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 10, height: 5) )
rect2.origin
rect2.size

// 可以学习CGRect里还有什么属性和方法？
//rect2.
// 进而，CGPoint和CGSize里还有什么属性和方法？
// 在UIKit中经常被使用！

// Computed Property和Method是一个风格问题

