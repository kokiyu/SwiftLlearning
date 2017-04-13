//: Playground - noun: a place where people can play

import UIKit


//闭包和函数都是引用类型，另外，闭包的特点就是一个函数有权访问另外一个函数内的变量和参数。在这一点上大部分语言都相同

func runningMetersWithMetersPerDay( metersPerDay: Int) -> () -> Int {
    
    var totalMeters = 0
    //其实这里是()->Int 的闭包
    return {
        totalMeters += metersPerDay
        return totalMeters
    }
}

var planA = runningMetersWithMetersPerDay(metersPerDay:2000)
planA()
planA()
planA()

var planB = runningMetersWithMetersPerDay(metersPerDay:5000)
planB()
planB()

var anotherPlan = planB
anotherPlan()

// 证明函数和闭包属于引用类型
planB()

// 引用类型的常量可以修改其内部的值
let planC = runningMetersWithMetersPerDay(metersPerDay: 3000)
planC()
planC()

// 引用类型的常量不可以修改其所指向的内存空间
//planC = runningMetersWithMetersPerDay(6000)

