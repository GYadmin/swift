// Playground - noun: a place where people can play

import UIKit

let userScores = [12,990,4324,23423,1232132131]

func maxminScore(scores:[Int]) ->(maxscore:Int, minscore:Int)?
{
    if scores.isEmpty
    {
        return nil
    }
    
    var curmax = scores[0],curmin = scores[0]
    for score in scores[1..<scores.count]
    {
        curmax = max(curmax, score)
        curmin = min(curmin, score)
    }
    return (curmax,curmin)
}

if let result = maxminScore(userScores)
{
    println(result.maxscore)
    println(result.minscore)
}


