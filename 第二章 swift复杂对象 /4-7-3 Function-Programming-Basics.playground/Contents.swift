//: Playground - noun: a place where people can play

import UIKit

func changeScores(scores:inout [Int] , by changeScore: (Int)->Int ){
    
    for (index,score) in scores.enumerated(){
        scores[index] = changeScore(score)
    }
}

func changeScore(score: Int) -> Int{
    return Int(sqrt(Double(score))*10)
}


var scores = [65, 91, 45, 97, 87, 72, 33]
//changeScores(scores: &scores, by: changeScore)


// map不改变原数组的值 
//map函数只能定义在数组上，就是将数组上的每一个元素根据map函数后面括号里的方法进行改变
scores.map(changeScore)

//等价于
//changeScores(scores: &scores, by: changeScore)

//2. 使用map 以后, 不局限于scores数组,各种数组都可以进行使用

func isPassOrFail(score: Int) -> String{
    return score < 60 ? "Fail" : "Pass"
}
scores.map(isPassOrFail)


// filter ——根据自己的筛选条件，获得自己想要的数组元素
func fail(score: Int) -> Bool{
    return score < 60
}
scores.filter(fail)

func add(num1: Int , _ num2: Int) -> Int{
    return num1 + num2
}
// reduce ——根据你的条件，把你数组中的值都聚合成一个值
//第一个参数是初值
scores.reduce(0, add)
//对于常用的求和方式，可以不需要自己写，直接使用+号即可
scores.reduce(0, +)

//这一段只是指将6 转成字符串"6"
func concatenate( str: String , num: Int ) -> String{
    return str + String(num) + " "
}
scores.reduce(" ", concatenate)
