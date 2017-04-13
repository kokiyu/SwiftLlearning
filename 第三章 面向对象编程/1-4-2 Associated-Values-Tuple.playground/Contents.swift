//: Playground - noun: a place where people can play

import UIKit

// Associate Value 可以是多个
enum Shape{
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerx: Double, centery: Double, radius: Double)
    case Point  //可以没有Associate Value
}


let square = Shape.Square(side: 10)
let rectangle = Shape.Rectangle(width: 20, height: 30)
let circle = Shape.Circle(centerx: 0, centery: 0, radius: 15)
let point = Shape.Point

func area(_ shape: Shape) -> Double{
    
    switch shape {
    case let .Square(side):
        return side*side
    case let .Rectangle( width , height ):
        return width * height
    case let .Circle( _ , _ , r ):  // 使用_忽略没用的参数
        return M_PI*r*r
    case .Point:
        return 0
    }
}

area(square)
area(rectangle)
area(circle)
area(point)
