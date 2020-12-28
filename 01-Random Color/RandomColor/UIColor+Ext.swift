//
//  UIColor+Ext.swift
//  RandomColor
//
//  Created by Felix Leitenberger on 07.04.20.
//  Copyright © 2020 Felix Leitenberger. All rights reserved.
//

import UIKit

extension UIColor {
    static func randomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return randomColor
    }
}
