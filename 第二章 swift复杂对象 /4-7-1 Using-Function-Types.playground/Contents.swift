//: Playground - noun: a place where people can play

import UIKit

func changeScores1( scores:inout [Int] ){
    
    for (index,score) in scores.enumerated(){
        scores[index] = Int(sqrt(Double(score))*10)
    }
}

func changeScores2( scores:inout [Int] ){
    
    for (index,score) in scores.enumerated(){
        scores[index] = Int( Double(score) / 150.0 * 100.0 )
    }
}


var scores1 = [36,61,78,89,99]
changeScores1(scores: &scores1)

var scores2 = [88,101,124,137,150]
changeScores2(scores: &scores2)