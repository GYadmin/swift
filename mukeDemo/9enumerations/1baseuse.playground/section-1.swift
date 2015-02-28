// Playground - noun: a place where people can play

import UIKit

enum GameEnding{
    case Win
    case Lose
    case Draw
}

var youscore:Int = 100
var enemyScore:Int = 100

var theGameEnding:GameEnding
if youscore > enemyScore
{
    theGameEnding = GameEnding.Win
}else if youscore == enemyScore
{
    theGameEnding = .Draw
}
else
{
    theGameEnding = .Lose
}

switch theGameEnding
{
case .Win: println("You win")
case .Lose :println("you Lose")
case .Draw :println("It's a draw")
}

