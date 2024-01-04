//
//  UIColor+Extension.swift
//  TYPuzzle
//
//  Created by 老沙 on 2024/1/4.
//

import Foundation
import UIKit
import CoreGraphics

public extension UIColor {
    class func make(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0) -> UIColor {
        if #available(iOS 10.0, *) {
            return UIColor(displayP3Red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        }else{
            return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        }
    }

    /// 十六进制颜色值
    /// - parameter hex: 十六进制值,例如: 0x000fff
    /// - parameter alpha: 透明度
    class func hex(_ hex: UInt32, alpha: CGFloat = 1.0) -> UIColor {
        if hex > 0xFFF {
            let divisor = CGFloat(255)
            let red     = CGFloat((hex & 0xFF0000) >> 16) / divisor
            let green   = CGFloat((hex & 0xFF00  ) >> 8)  / divisor
            let blue    = CGFloat( hex & 0xFF    )        / divisor
            return UIColor(red: red, green: green, blue: blue, alpha: alpha)
        } else {
            let divisor = CGFloat(15)
            let red     = CGFloat((hex & 0xF00) >> 8) / divisor
            let green   = CGFloat((hex & 0x0F0) >> 4) / divisor
            let blue    = CGFloat( hex & 0x00F      ) / divisor
            return UIColor(red: red, green: green, blue: blue, alpha: alpha)
        }
    }
}
//MARK: **************** 颜色值 **********************
public extension UIColor {

    //MARK: 颜色快捷设置相关函数
    static func ColorWithRGBA(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor.make(red: red, green: green, blue: blue, alpha: alpha)
    }

    static func ColorWithHexRGBA(_ hex: UInt32, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor.hex(hex, alpha: alpha)
    }

    /// 获得随机颜色
    /// - Returns: 随机颜色
    static func randomColor(alpheRandom: Bool = false) -> UIColor {
        let red   = CGFloat.random(in: 0...255)
        let green = CGFloat.random(in: 0...255)
        let blue  = CGFloat.random(in: 0...255)
        var alphe = CGFloat(1)
        if alpheRandom {
            alphe = CGFloat.random(in: 0...1)
        }
        return ColorWithRGBA(red: red, green: green, blue: blue, alpha: alphe)
    }
    
    // TODO: ====== Green ====
    /// 文字 (red: 16, green: 188, blue: 131)
    static let green0 = ColorWithRGBA(red: 16, green: 188, blue: 131)
    /// 微信Icon背景色 (red: 6, green: 194, blue: 95)
    static let green1 = ColorWithRGBA(red: 6, green: 194, blue: 95)
    
    /// 文字 (red: 16, green: 188, blue: 131)
    var darkGreen0: UIColor {
        
        return UIColor.blue0
    }
    
    // TODO: ====== Black ====
    /// 文字 (red: 48, green: 49, blue: 51)
    static let black0 = ColorWithRGBA(red: 48, green: 49, blue: 51)
    /// 文字 (red: 96, green: 98, blue: 102)
    static let black1 = ColorWithRGBA(red: 96, green: 98, blue: 102)
    
    static let darkBlack0 = gray2
    
    // TODO: ====== Red ====
    /// newTag ColorWithRGBA(red: 241, green: 44, blue: 32)
    static let red0 = ColorWithRGBA(red: 241, green: 44, blue: 32)
    /// 必填 ColorWithRGBA(red: 241, green: 86, blue: 66)
    static let red1 = ColorWithRGBA(red: 241, green: 86, blue: 66)
    /// 退出登录 (red: 253, green: 100, blue: 34)
    static let red2 = ColorWithRGBA(red: 253, green: 100, blue: 34)
    /// 已停工 (red: 196, green: 58, blue: 41)
    static let red3 = ColorWithRGBA(red: 196, green: 58, blue: 41)

    // TODO: ====== Blue ====
    /// 主题蓝 (red: 60, green: 135, blue: 246)
    static let blue0 = ColorWithRGBA(red: 60, green: 135, blue: 246)
    /// 次主题蓝 (red: 81, green: 116, blue: 154)
    static let blue1 = ColorWithRGBA(red: 81, green: 116, blue: 154)
    /// 空工作台按钮文字 (red: 89, green: 86, blue: 214)
    static let blue2 = ColorWithRGBA(red: 89, green: 86, blue: 214)
    
    // TODO: ====== Orange ====
    /// 文字背景 (red: 255, green: 170, blue: 2)
    static let orange0 = ColorWithRGBA(red: 255, green: 170, blue: 2)


    // MARK: ==== Gray ====
    /// 灰色文字(red: 144, green: 147, blue: 153)
    static let gray0 = ColorWithRGBA(red: 144, green: 147, blue: 153)

    /// 灰色背景 (red: 238, green: 238, blue: 238)
    static let gray1 = ColorWithRGBA(red: 238, green: 238, blue: 238)

    /// 边框线 (red: 212, green: 212, blue: 212)   顶部按钮不可点击文字颜色
    static let gray2 = ColorWithRGBA(red: 212, green: 212, blue: 212)

    /// 灰色箭头 (red: 199, green: 199, blue: 204)
    static let gray3 = ColorWithRGBA(red: 199, green: 199, blue: 204)

    /// 列表背景 (red: 248, green: 248, blue: 248)
    static let gray4: UIColor = ColorWithRGBA(red: 248, green: 248, blue: 248)
    /// 进度文字 (red: 96, green: 98, blue: 102)
    static let gray5 = ColorWithRGBA(red: 96, green: 98, blue: 102)

    // MARK: ==== White ====
    /// 聊天室别人发送的消息气泡颜色
    static let white0: UIColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
    
    static let darkWhite0: UIColor = UIColor.black0
}
