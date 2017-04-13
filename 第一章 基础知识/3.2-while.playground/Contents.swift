//: Playground - noun: a place where people can play

import UIKit

var aWin = 0
var bWin = 0
var game = 0
//1.while循环
while aWin<3 && bWin<3 {
    
    game+=1
    
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    print("a现在是\(a),b现在是\(b)")
    
    if a > b {
        print("这局是a赢了")
        bWin = 0
        aWin+=1
    }
    else if a < b{
        print("这局是b赢了")
        aWin = 0
        bWin+=1
        
    }
    else{
        print("这局是平局")
        aWin = 0
        bWin = 0
    }
    
}

//print
let winner = aWin == 3 ? "A":"B"
print("在\(game)局后,\(winner)赢了")

//2. repet-while是只执行一次的while

print("只相互投掷一次骰子")
var aWinner = false
var bWinner = false

repeat{
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    if a > b {
        aWinner = true
    }
    else if a < b{
        bWinner = false
    }
    else {
        print("draw",terminator:"")
    }
}while !aWinner && !bWinner

//打印游戏结果
let winner2 = aWinner ? "A" : "B"
print("\(winner2) win!")

//3.break 和 continue
while true{
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    if a==b {
        print("draw")
    continue //不用管后面的部分，直接跳回前面，继续执行
    }
    let winner = a > b ? "A" : "B"
    print("\(winner) win!")
    break
    
}