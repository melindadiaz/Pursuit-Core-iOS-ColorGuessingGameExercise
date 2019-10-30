//
//  Colors.swift
//  ColorGuessingGame
//
//  Created by Melinda Diaz on 10/29/19.
//  Copyright © 2019 Melinda Diaz. All rights reserved.
//

import UIKit

struct RGBValues {
    let alpha = CGFloat(1)
    var red = CGFloat.random(in: 0...1)
    var green = CGFloat.random(in: 0...1)
    var blue = CGFloat.random(in: 0...1)
    
    func rgbColor() -> UIColor {
       return UIColor(red: red, green: green, blue: blue, alpha: alpha)
       //you dont need code variable let bypass it by just return it (as shown here)
    }
    
    func highestRGB() -> CGFloat {
        
        let sortedRGB = [red, green, blue].sorted(by:{$0 > $1})//this sorts everything and keeps the highest value as a 0.
        return sortedRGB[0]
    }
    
}


