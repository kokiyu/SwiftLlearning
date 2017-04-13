//: Playground - noun: a place where people can play

import UIKit

class ScoreBook{
    
    var scores:[Int]
    
    //虽然是静态方法，仍然没有强引用
    static var changeScore: ((Int) -> Int)?
    var printTitle: ()->() = { _ in
        print("== SCORE BOOK ==")
    }
    
    init( scores:[Int] ){
        self.scores = scores
        print("Scorebook is initialized")
    }
    
    func printScore(){
        scores.map({ score in
            print("== \(score) ==")
        })
    }
    
    func changeScores(){
        //这里使用ScoreBook 是因为changeScore 是一个静态方法，必须调用类名
        if let changeScore = ScoreBook.changeScore{
            scores = scores.map(changeScore)
        }
    }
    
    deinit{
        print("Scorebook is being deinitialized.")
    }
    
}


let scores: [Int] = [99,85,67,13,94]


var scoreBook: ScoreBook? = ScoreBook(scores: scores)
ScoreBook.changeScore = { (score: Int) in
    return score - 2
}
scoreBook?.changeScores()
scoreBook?.printTitle()
scoreBook?.printScore()
scoreBook = nil