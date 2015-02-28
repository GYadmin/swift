// Playground - noun: a place where people can play

import UIKit

func tryToChangeValue(var x:Int){
    x++
}
var a:Int = 2
tryToChangeValue(a)
a

func caloTotalMiles(todayMiles:Int )->() ->Int{
    var totalMiles = 0
    return {totalMiles += todayMiles; return totalMiles}
}

var dailyTwoMiles = caloTotalMiles(2)
dailyTwoMiles()
dailyTwoMiles()

var myPlan = dailyTwoMiles
myPlan()
dailyTwoMiles()
