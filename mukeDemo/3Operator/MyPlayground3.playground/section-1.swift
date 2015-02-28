// Playground - noun: a place where people can play

import UIKit

let a = 5;
let b = 2;
var c = 0;

a/b
a%b
//a/c
//a%c

Int.max
//Int.max +1

c++
c

c += 2

let statusBarHeight = 20
let basicViewHeight = 548
var inFullScreenMode = true

var viewHeight = basicViewHeight + (inFullScreenMode ? statusBarHeight:10);

var userNickName:String?
//
//userNickName = "liuyoubobobob"
//
//if userNickName != nil{
//    println("Hello,\(userNickName!)");
//}else{
//    println("")
//}

let outputName:String = userNickName ??  "Guest"
//!= nil ? userNickName! :
println("Hello,"+outputName);

for index in 1..<10{
    index
}

let courseNames = ["1","2","3"];
for i in 0..<courseNames.count{
    println(courseNames[i])
}

let chapterNames = [
    "chapter 1",
    "chapter 2"
]

var count = 0;
for name in chapterNames{
    if name.hasPrefix("chapter"){
        count++;
    }
}

count

var str1 = "ffff"
str1.capitalizedString
str1.uppercaseString
str1.lowercaseString

var str2 = "      !fsfs "
str2.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet());

str2.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " fs"))

var str3 = "welcome to play swift"
str3.componentsSeparatedByString(" ");

var str4 = "welcome to aa-bb-cc !sdfd"
str4.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: " !-"))

var str5 = "--"
str5.join(["1","2","2","5","6"])


var str = "Welcome to play swifty! Step by Step learn Swifty";
str.rangeOfString("Step");

str.rangeOfString("Step", options:NSStringCompareOptions.BackwardsSearch)

str.startIndex
str.endIndex
let strRange = Range<String.Index>(start: str.startIndex, end: str.endIndex)

let startIndex:String.Index = str.startIndex
let endIndex:String.Index = advance(str.startIndex, 10);
let searchRange = Range<String.Index>(start:startIndex,end:endIndex);

str.rangeOfString("welcome", options: NSStringCompareOptions.CaseInsensitiveSearch, range: searchRange)


var toIndex = advance(str.startIndex, 4)
str.substringToIndex(toIndex)

var fromIndex = advance(str.startIndex, 14)
str.substringToIndex(fromIndex)

str.substringWithRange(Range<String.Index>(start:toIndex,end:fromIndex);











