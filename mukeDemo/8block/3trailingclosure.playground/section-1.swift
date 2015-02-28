// Playground - noun: a place where people can play

import UIKit

var strArr = ["d","cd"]

sorted(strArr){(s1,s2) in
    if(countElements(s1) != countElements(s2)){
        return countElements(s1) < countElements(s2)
    }
    return s1 < s2
}

var arr = [0,2,4,24,234,23,44,3242]

var num = 3
sorted(arr){ return fabs(Float($0-num)) < fabs(Float($1-num)) }

