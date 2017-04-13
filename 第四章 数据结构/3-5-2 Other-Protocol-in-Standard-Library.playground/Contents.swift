//: Playground - noun: a place where people can play

import UIKit

// CustomStringConvertible and BooleanType

//Equatable 相等 ==比较协议
//Comparable < 比较协议
//CustomStringConvertible 字符串协议
struct Record: Equatable, Comparable, CustomStringConvertible{
    
    var wins: Int
    var losses: Int
    
    var description: String{
        return "WINS: " + String(wins) + " , LOSSES: " + String(losses)
    }
    
    var boolValue: Bool{
        return wins > losses
    }
}
func ==(left: Record, right: Record) -> Bool{
    return left.wins == right.wins && left.losses == right.losses
}
func <(left: Record, right: Record) -> Bool{
    if left.wins != right.wins{
        return left.wins < right.wins
    }
    return left.losses > right.losses
}


let record = Record(wins: 10, losses: 5)

print( record )

if record.boolValue{
    print("Great!")
}


// 可以在extension中实现协议！
// 局限：不能使用存储型变量
extension Int{
    public var boolValue: Bool{
        return self != 0
    }
}

var wins = 0
if !wins.boolValue{
    print("You never win!")
}


// extension of protocol? See you next Chapter!