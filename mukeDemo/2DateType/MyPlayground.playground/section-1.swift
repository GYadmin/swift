// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

str = "1234556";

var i = 10;

let a = 100;

println(a);

let minValue = UInt8.min;
let maxValue = UInt8.max;
let magicNum = 42;
let pi = 3.14;

let apples = 3;
let oranges = 5;
println(apples+oranges);
let applySummary = "I have \(apples) apples";
let fruitSummary = "I have \(apples+oranges) fruits";

let label = "The width is";
let withd = 100;
let widthlable = label+String(withd);

let http404erro = (404,"not found");
var sererconneted = (true,"Connect");
sererconneted = (false,"Can't Connect");

enum CompassPoint{
case North
case South
case East
case West
}

var directToHead = CompassPoint.East;

println("hello swift");

let decimalInt:Int = 17;
let binaryInt:Int = 0b10001;
let octalInt:Int = 0o21;
let hexadeciamInt:Int = 0x11;

let float_a = 0.0012;
let float_b = 1.2e-2;

let bignum_a = 1e10;
let bignum_b = 1_0000;

let num_a:Float = 1;

let inta:Int = 3
let intb:Int = Int(1.2);

let b:Double = 0.14;

let pi_i:Double = Double(inta)+b;

//let 姓名 ＝ "free";
println("");

let imtrueVar = true;
let imfalseVar = false;

if imfalseVar {
    println("I'm Trur");
}
else if 13+3 == 16{
    println("OK")
}

let registrationResult = (true,"lili","famale");
let connectionResult = (400,"Not Found");

let (isRegisterSuccess,nickname,gender) = registrationResult;

isRegisterSuccess
registrationResult.0
nickname
gender

let myRegistration = (aa:1,bb:"b");
myRegistration.aa

let loginResult:(Bool,String) = (true,"aaa");
let (isLoginSuccess,_) = loginResult;
if isLoginSuccess {
    println("login in success");
}

var a_int:Int ;
a_int = 1;

var imOptionalVariable:Int?

imOptionalVariable = 12;

let userInput = "20";
var age = userInput.toInt();
if age != nil {
    println("not null"+String(age!));
    age
    age!
}

//Optional Binging
if let userAge = userInput.toInt(){
    println("you age is \(userAge)");
}else{
    println("Invalidate userInput");
}

let strA:String? ＝ "test";
strA
strA!

let strB:String! = "test";
strB








