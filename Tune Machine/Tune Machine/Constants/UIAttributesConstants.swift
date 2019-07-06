//
//  UIAttributesConstants.swift
//  Tune Machine
//
//  Created by Sergio Rosendo on 7/3/19.
//  Copyright © 2019 Sergio Rosendo. All rights reserved.
//

import UIKit

enum AttributedTextkeys {
    static let FontKey = NSMutableAttributedString.Key.font
    static let FontColorKey = NSMutableAttributedString.Key.font
}


enum AppColors {
    static let DoveGray = UIColor(red: 113/255, green: 113/255, blue: 113/255, alpha: 1)
    static let Emerald = UIColor(red: 80/255, green: 210/255, blue: 94/255, alpha: 1)
    static let EmeraldDark = UIColor(red: 63/255, green: 190/255, blue: 77/255, alpha: 1)
    static let Alto = UIColor(red: 208/255, green: 208/255, blue: 208/255, alpha: 1)
    static let White = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
}


enum AppFonts {
    static let LatoRegular = UIFont(name: "Lato-Regular", size: 18.0)!
    static let LatoBold = UIFont(name: "Lato-Bold", size: 18.0)!
}
