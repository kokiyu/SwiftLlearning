//: Playground - noun: a place where people can play

import UIKit

//别名的作用，使用关键字typealias, Length 本质就是Double

typealias Length = Double

extension Double{
    
    var km: Length{ return self * 1000.0 }
    var m: Length{ return self }
    var cm: Length{ return self / 100 }
    var ft: Length{ return self / 3.28084 }
}

let runningDistance: Length = 3.54.km
runningDistance

//AudioSample 可以在不同的环境下换成不同的类型。
typealias AudioSample = UInt64
