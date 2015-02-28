// Playground - noun: a place where people can play

import UIKit

var arr:[Int] = [1,3,4,5,6,7,8,9]

sorted(arr)

func compareTwoInts(a:Int,b:Int)->Bool
{
    return a>b
}

sorted(arr,compareTwoInts)

sorted(arr,{(a:Int,b:Int)->Bool in
    return a>b
})

var strArr = ["a","ab","fdfsd","fsfs","2312"]
sorted(strArr,{(s1:String,s2:String)->Bool in
    if countElements(s1) != countElements(s2)
    {
        return countElements(s1) < countElements(s2)
    }
    return s1 < s2
})
