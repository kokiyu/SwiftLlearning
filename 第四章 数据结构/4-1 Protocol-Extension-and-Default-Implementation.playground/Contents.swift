//: Playground - noun: a place where people can play

import UIKit

//协议是可以继承的，此处表示Record 继承了 CustomStringConvertible
protocol Record: CustomStringConvertible{
    
    var wins: Int {get}
    var losses: Int {get}
    
    func winningPercent() -> Double
}

// 扩展一个协议的时候，可以拥有实现！

//扩展协议相当于定义了公用的协议方法，每一个使用这个协议的类，都已经实现了这些方法
extension Record{
    
    var description: String{
        return String(format: "WINS: %d , LOSSES: %d", arguments: [wins,losses])
    }
    
    func shoutWins(){
        print("WE WIN",wins,"TIMES!!!")
    }
    
    var gamePlayed: Int{
        return wins + losses
    }
}

struct BasketballRecord: Record{
    
    var wins: Int
    var losses: Int
    
    func winningPercent() -> Double {
        //return Double(wins)/Double(wins + losses)
        return Double(wins)/Double(gamePlayed)
    }
}
//extension BasketballRecord: CustomStringConvertible{}

struct BaseballRecord: Record{
    
    var wins: Int
    var losses: Int
    
    func winningPercent() -> Double {
        return Double(wins)/Double(gamePlayed)
    }
}

let teamRecord = BasketballRecord(wins: 2, losses: 10)
print(teamRecord)

teamRecord.shoutWins()


// 扩展标准库中的协议
extension CustomStringConvertible{
    var descriptionWithDate: String{
        return NSDate().description + " " + description
    }
}

print( teamRecord.descriptionWithDate )
