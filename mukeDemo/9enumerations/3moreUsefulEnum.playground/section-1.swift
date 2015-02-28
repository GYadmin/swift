// Playground - noun: a place where people can play

import UIKit

enum Barcode
{
    case UPCA(Int,Int,Int,Int)
    case QRCode(String)
}

let productCodeA = Barcode.UPCA(4, 1, 323, 12)
let productCodeB:Barcode = .QRCode("this is a information")

switch productCodeA {
case .UPCA(let numberSystem,let manufacture, let indentifiter,let check):
    println("UPCA with value of \(numberSystem),\(manufacture),\(indentifiter),\(check)")
case .QRCode(let productCode):
    println("QR code with value of \(productCode).")
}
