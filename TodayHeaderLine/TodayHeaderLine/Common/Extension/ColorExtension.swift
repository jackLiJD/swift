//
//  ColorExtension.swift
//  TodayHeaderLine
//
//  Created by 返利峰 on 2017/12/20.
//  Copyright © 2017年 com.alading. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    public class func hexStringWithColor(hexString: String) -> UIColor{
        
        var cString: String = hexString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        
        if cString.characters.count < 6 {
            return UIColor.black
        }
        if cString.hasPrefix("0X") {
            cString = cString.substring(from: cString.index(cString.startIndex, offsetBy: 2))
        }
        if cString.hasPrefix("#") {
            cString = cString.substring(from: cString.index(cString.startIndex, offsetBy: 1))
        }
        if cString.characters.count != 6 {
            return UIColor.black
        }
        
        var range: NSRange = NSMakeRange(0, 2)
        let rString = (cString as NSString).substring(with: range)
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        range.location = 4
        let bString = (cString as NSString).substring(with: range)
        
        var r: UInt32 = 0x0
        var g: UInt32 = 0x0
        var b: UInt32 = 0x0
        Scanner.init(string: rString).scanHexInt32(&r)
        Scanner.init(string: gString).scanHexInt32(&g)
        Scanner.init(string: bString).scanHexInt32(&b)
        
        if #available(iOS 10.0, *) {
            return UIColor(displayP3Red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: CGFloat(1))
        } else {
            return UIColor(red:  CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: CGFloat(1))
            // Fallback on earlier versions
        }
        
    }
    
    
    
    
}
