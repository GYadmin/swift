// Playground - noun: a place where people can play

import UIKit

let colors = [
    "Air Force Blue":(red:93,green:138,blue:168),
    "Bittersweet":(red:254,green:239,blue:0),
    "Dark Orange":(red:255,green:140,blue:0),
    "Electric Violet":(red:143,green:0,blue:255),
    "Jazzberry Jam":(red:165,green:11,blue:94)
]

var backView = UIView(frame:CGRectMake(0.0, 0.0, 320.0, CGFloat(colors.count * 50)));
backView.backgroundColor = UIColor.blackColor()
backView

var index = 0
for (colorName,rgbTuple) in colors{
    var colorStripe = UILabel(frame: CGRectMake(0.0, CGFloat(index*50+5), 320.0,40.0))
    
    colorStripe.backgroundColor = UIColor(
        red: CGFloat(rgbTuple.red/255),
        green: CGFloat(rgbTuple.green/255),
        blue: CGFloat(rgbTuple.blue/255),
        alpha: 1.0)
    colorStripe
    
    var colorNameLable = UILabel(frame: CGRectMake(0.0, 0.0, 300.0, 40.0))
    colorNameLable.font = UIFont(name:"Arial",size:24.0)
    colorNameLable.textColor = UIColor.blackColor()
    colorNameLable.textAlignment = NSTextAlignment.Right
    
    colorNameLable.text = colorName
    
    colorStripe.addSubview(colorNameLable)
    
    backView.addSubview(colorStripe)
    index++
}

backView