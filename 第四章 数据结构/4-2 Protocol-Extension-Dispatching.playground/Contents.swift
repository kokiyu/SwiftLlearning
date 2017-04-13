//: Playground - noun: a place where people can play

import UIKit

protocol Record: CustomStringConvertible{
    
    var wins: Int {get}
    var losses: Int {get}
    
    //func winningPercent() -> Double
}

//1.定义Record的协议实现方法
extension Record{
    
    var description: String{
        return String(format: "WINS: %d , LOSSES: %d", arguments: [wins,losses])
    }
    
    var gamePlayed: Int{
        return wins + losses
    }
}

protocol Tieable{
    var ties: Int{get set}
}


// where Self: Tieable = 如果协议是Tieable的话 ，扩展Record。这个类型本身遵守了Record,同事也遵守了Tieable。Self 表示的是类型
extension Record where Self: Tieable{
    
    var gamePlayed: Int{
        return wins + losses + ties
    }
    
    func winningPercent() -> Double {
        return Double(wins)/Double(wins + losses + ties)
    }
}


struct BasketballRecord: Record{
    
    var wins: Int
    var losses: Int
    
    //    func winningPercent() -> Double {
    //        return Double(wins)/Double(gamePlayed)
    //    }
}


struct BaseballRecord: Record{
    
    var wins: Int
    var losses: Int
    //可以实现自己的变量，不一定非要用Record协议里的变量
    let gamePlayed = 162
    
    //    func winningPercent() -> Double {
    //        return Double(wins)/Double(gamePlayed)
    //    }
}

//定义了自己的变量ties
struct FootballRecord: Record, Tieable{
    var wins: Int
    var losses: Int
    var ties: Int
    
    //    var gamePlayed: Int{
    //        return wins + losses + ties
    //    }
    //
    //    func winningPercent() -> Double {
    //        return Double(wins)/Double(wins+losses+ties)
    //    }
}


let basketballTeamRecord = BasketballRecord(wins: 2, losses: 10)
let baseballTeamRecord = BaseballRecord(wins: 10, losses: 5)

basketballTeamRecord.gamePlayed
baseballTeamRecord.gamePlayed

let footballTeamRecord = FootballRecord(wins: 1, losses: 1, ties: 1)
footballTeamRecord.gamePlayed
footballTeamRecord.winningPercent()