// Playground - noun: a place where people can play

import UIKit

func tier1MailFee(weight:Int)->Int
{
    return 1*weight
}

func tier2MailFee(weight:Int)->Int
{
    return 2*weight
}
func choosemailFeeCalcMethod(weight:Int)->(Int) ->Int
{
    return weight <= 10 ? tier1MailFee : tier2MailFee
}

func totalPrice(price:Int,weight:Int) ->Int
{
    let mailfeeCale:(Int)->Int = choosemailFeeCalcMethod(weight)
    return mailfeeCale(weight) = price*weight
}
