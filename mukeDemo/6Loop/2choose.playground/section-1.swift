// Playground - noun: a place where people can play

import UIKit

var rating = "B";
if rating == "A"
{
    println("Great");
}
else if rating == "B"
{
    println("Just soso")
}
else
{
    println("Bad")
}

switch rating
{
case "a","A":
    println("Great")
case "b","B":
    println("Just so-so")
case "C":
    println("It's Bad.")
default:
    println("It's bad")
}
