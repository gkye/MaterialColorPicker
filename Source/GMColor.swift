//
//  GMColor.swift
//  GMColor
//
//  Created by Todsaporn Banjerdkit (katopz) on 12/19/14.
//  Copyright (c) 2014 Debokeh. All rights reserved.
//

import UIKit

extension UIColor {
  convenience init(rgb: UInt, a:CGFloat) {
    self.init(
      red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
      green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
      blue: CGFloat(rgb & 0x0000FF) / 255.0,
      alpha: a
    )
  }
  
  convenience init(rgb: UInt) {
    self.init(rgb: rgb, a:1.0)
  }
}

public struct GMColor {
  
  // MARK: - red
  
  public static func red50Color() -> UIColor {
    return UIColor(rgb: 0xffebee)
  }
  
  public static func red100Color() -> UIColor {
    return UIColor(rgb: 0xffcdd2)
  }
  
  public static func red200Color() -> UIColor {
    return UIColor(rgb: 0xef9a9a)
  }
  
  public static func red300Color() -> UIColor {
    return UIColor(rgb: 0xe57373)
  }
  
  public static func red400Color() -> UIColor {
    return UIColor(rgb: 0xef5350)
  }
  
  public static func red500Color() -> UIColor {
    return UIColor(rgb: 0xf44336)
  }
  
  public static func red600Color() -> UIColor {
    return UIColor(rgb: 0xe53935)
  }
  
  public static func red700Color() -> UIColor {
    return UIColor(rgb: 0xd32f2f)
  }
  
  public static func red800Color() -> UIColor {
    return UIColor(rgb: 0xc62828)
  }
  
  public static func red900Color() -> UIColor {
    return UIColor(rgb: 0xb71c1c)
  }
  
  public static func redA100Color() -> UIColor {
    return UIColor(rgb: 0xff8a80)
  }
  
  public static func redA200Color() -> UIColor {
    return UIColor(rgb: 0xff5252)
  }
  
  public static func redA400Color() -> UIColor {
    return UIColor(rgb: 0xff1744)
  }
  
  public static func redA700Color() -> UIColor {
    return UIColor(rgb: 0xd50000)
  }
  
  // MARK: - pink
  
  public static func pink50Color() -> UIColor {
    return UIColor(rgb: 0xfce4ec)
  }
  
  public static func pink100Color() -> UIColor {
    return UIColor(rgb: 0xf8bbd0)
  }
  
  public static func pink200Color() -> UIColor {
    return UIColor(rgb: 0xf48fb1)
  }
  
  public static func pink300Color() -> UIColor {
    return UIColor(rgb: 0xf06292)
  }
  
  public static func pink400Color() -> UIColor {
    return UIColor(rgb: 0xec407a)
  }
  
  public static func pink500Color() -> UIColor {
    return UIColor(rgb: 0xe91e63)
  }
  
  public static func pink600Color() -> UIColor {
    return UIColor(rgb: 0xd81b60)
  }
  
  public static func pink700Color() -> UIColor {
    return UIColor(rgb: 0xc2185b)
  }
  
  public static func pink800Color() -> UIColor {
    return UIColor(rgb: 0xad1457)
  }
  
  public static func pink900Color() -> UIColor {
    return UIColor(rgb: 0x880e4f)
  }
  
  public static func pinkA100Color() -> UIColor {
    return UIColor(rgb: 0xff80ab)
  }
  
  public static func pinkA200Color() -> UIColor {
    return UIColor(rgb: 0xff4081)
  }
  
  public static func pinkA400Color() -> UIColor {
    return UIColor(rgb: 0xf50057)
  }
  
  public static func pinkA700Color() -> UIColor {
    return UIColor(rgb: 0xc51162)
  }
  
  // MARK: - purple
  
  public static func purple50Color() -> UIColor {
    return UIColor(rgb: 0xf3e5f5)
  }
  
  public static func purple100Color() -> UIColor {
    return UIColor(rgb: 0xe1bee7)
  }
  
  public static func purple200Color() -> UIColor {
    return UIColor(rgb: 0xce93d8)
  }
  
  public static func purple300Color() -> UIColor {
    return UIColor(rgb: 0xba68c8)
  }
  
  public static func purple400Color() -> UIColor {
    return UIColor(rgb: 0xab47bc)
  }
  
  public static func purple500Color() -> UIColor {
    return UIColor(rgb: 0x9c27b0)
  }
  
  public static func purple600Color() -> UIColor {
    return UIColor(rgb: 0x8e24aa)
  }
  
  public static func purple700Color() -> UIColor {
    return UIColor(rgb: 0x7b1fa2)
  }
  
  public static func purple800Color() -> UIColor {
    return UIColor(rgb: 0x6a1b9a)
  }
  
  public static func purple900Color() -> UIColor {
    return UIColor(rgb: 0x4a148c)
  }
  
  public static func purpleA100Color() -> UIColor {
    return UIColor(rgb: 0xea80fc)
  }
  
  public static func purpleA200Color() -> UIColor {
    return UIColor(rgb: 0xe040fb)
  }
  
  public static func purpleA400Color() -> UIColor {
    return UIColor(rgb: 0xd500f9)
  }
  
  public static func purpleA700Color() -> UIColor {
    return UIColor(rgb: 0xaa00ff)
  }
  
  // MARK: - deep-purple
  
  public static func deepPurple50Color() -> UIColor {
    return UIColor(rgb: 0xede7f6)
  }
  
  public static func deepPurple100Color() -> UIColor {
    return UIColor(rgb: 0xd1c4e9)
  }
  
  public static func deepPurple200Color() -> UIColor {
    return UIColor(rgb: 0xb39ddb)
  }
  
  public static func deepPurple300Color() -> UIColor {
    return UIColor(rgb: 0x9575cd)
  }
  
  public static func deepPurple400Color() -> UIColor {
    return UIColor(rgb: 0x7e57c2)
  }
  
  public static func deepPurple500Color() -> UIColor {
    return UIColor(rgb: 0x673ab7)
  }
  
  public static func deepPurple600Color() -> UIColor {
    return UIColor(rgb: 0x5e35b1)
  }
  
  public static func deepPurple700Color() -> UIColor {
    return UIColor(rgb: 0x512da8)
  }
  
  public static func deepPurple800Color() -> UIColor {
    return UIColor(rgb: 0x4527a0)
  }
  
  public static func deepPurple900Color() -> UIColor {
    return UIColor(rgb: 0x311b92)
  }
  
  public static func deepPurpleA100Color() -> UIColor {
    return UIColor(rgb: 0xb388ff)
  }
  
  public static func deepPurpleA200Color() -> UIColor {
    return UIColor(rgb: 0x7c4dff)
  }
  
  public static func deepPurpleA400Color() -> UIColor {
    return UIColor(rgb: 0x651fff)
  }
  
  public static func deepPurpleA700Color() -> UIColor {
    return UIColor(rgb: 0x6200ea)
  }
  
  // MARK: - indigo
  
  public static func indigo50Color() -> UIColor {
    return UIColor(rgb: 0xe8eaf6)
  }
  
  public static func indigo100Color() -> UIColor {
    return UIColor(rgb: 0xc5cae9)
  }
  
  public static func indigo200Color() -> UIColor {
    return UIColor(rgb: 0x9fa8da)
  }
  
  public static func indigo300Color() -> UIColor {
    return UIColor(rgb: 0x7986cb)
  }
  
  public static func indigo400Color() -> UIColor {
    return UIColor(rgb: 0x5c6bc0)
  }
  
  public static func indigo500Color() -> UIColor {
    return UIColor(rgb: 0x3f51b5)
  }
  
  public static func indigo600Color() -> UIColor {
    return UIColor(rgb: 0x3949ab)
  }
  
  public static func indigo700Color() -> UIColor {
    return UIColor(rgb: 0x303f9f)
  }
  
  public static func indigo800Color() -> UIColor {
    return UIColor(rgb: 0x283593)
  }
  
  public static func indigo900Color() -> UIColor {
    return UIColor(rgb: 0x1a237e)
  }
  
  public static func indigoA100Color() -> UIColor {
    return UIColor(rgb: 0x8c9eff)
  }
  
  public static func indigoA200Color() -> UIColor {
    return UIColor(rgb: 0x536dfe)
  }
  
  public static func indigoA400Color() -> UIColor {
    return UIColor(rgb: 0x3d5afe)
  }
  
  public static func indigoA700Color() -> UIColor {
    return UIColor(rgb: 0x304ffe)
  }
  
  // MARK: - blue
  
  public static func blue50Color() -> UIColor {
    return UIColor(rgb: 0xe3f2fd)
  }
  
  public static func blue100Color() -> UIColor {
    return UIColor(rgb: 0xbbdefb)
  }
  
  public static func blue200Color() -> UIColor {
    return UIColor(rgb: 0x90caf9)
  }
  
  public static func blue300Color() -> UIColor {
    return UIColor(rgb: 0x64b5f6)
  }
  
  public static func blue400Color() -> UIColor {
    return UIColor(rgb: 0x42a5f5)
  }
  
  public static func blue500Color() -> UIColor {
    return UIColor(rgb: 0x2196f3)
  }
  
  public static func blue600Color() -> UIColor {
    return UIColor(rgb: 0x1e88e5)
  }
  
  public static func blue700Color() -> UIColor {
    return UIColor(rgb: 0x1976d2)
  }
  
  public static func blue800Color() -> UIColor {
    return UIColor(rgb: 0x1565c0)
  }
  
  public static func blue900Color() -> UIColor {
    return UIColor(rgb: 0x0d47a1)
  }
  
  public static func blueA100Color() -> UIColor {
    return UIColor(rgb: 0x82b1ff)
  }
  
  public static func blueA200Color() -> UIColor {
    return UIColor(rgb: 0x448aff)
  }
  
  public static func blueA400Color() -> UIColor {
    return UIColor(rgb: 0x2979ff)
  }
  
  public static func blueA700Color() -> UIColor {
    return UIColor(rgb: 0x2962ff)
  }
  
  // MARK: - light-blue
  
  public static func lightBlue50Color() -> UIColor {
    return UIColor(rgb: 0xe1f5fe)
  }
  
  public static func lightBlue100Color() -> UIColor {
    return UIColor(rgb: 0xb3e5fc)
  }
  
  public static func lightBlue200Color() -> UIColor {
    return UIColor(rgb: 0x81d4fa)
  }
  
  public static func lightBlue300Color() -> UIColor {
    return UIColor(rgb: 0x4fc3f7)
  }
  
  public static func lightBlue400Color() -> UIColor {
    return UIColor(rgb: 0x29b6f6)
  }
  
  public static func lightBlue500Color() -> UIColor {
    return UIColor(rgb: 0x03a9f4)
  }
  
  public static func lightBlue600Color() -> UIColor {
    return UIColor(rgb: 0x039be5)
  }
  
  public static func lightBlue700Color() -> UIColor {
    return UIColor(rgb: 0x0288d1)
  }
  
  public static func lightBlue800Color() -> UIColor {
    return UIColor(rgb: 0x0277bd)
  }
  
  public static func lightBlue900Color() -> UIColor {
    return UIColor(rgb: 0x01579b)
  }
  
  public static func lightBlueA100Color() -> UIColor {
    return UIColor(rgb: 0x80d8ff)
  }
  
  public static func lightBlueA200Color() -> UIColor {
    return UIColor(rgb: 0x40c4ff)
  }
  
  public static func lightBlueA400Color() -> UIColor {
    return UIColor(rgb: 0x00b0ff)
  }
  
  public static func lightBlueA700Color() -> UIColor {
    return UIColor(rgb: 0x0091ea)
  }
  
  // MARK: - cyan
  
  public static func cyan50Color() -> UIColor {
    return UIColor(rgb: 0xe0f7fa)
  }
  
  public static func cyan100Color() -> UIColor {
    return UIColor(rgb: 0xb2ebf2)
  }
  
  public static func cyan200Color() -> UIColor {
    return UIColor(rgb: 0x80deea)
  }
  
  public static func cyan300Color() -> UIColor {
    return UIColor(rgb: 0x4dd0e1)
  }
  
  public static func cyan400Color() -> UIColor {
    return UIColor(rgb: 0x26c6da)
  }
  
  public static func cyan500Color() -> UIColor {
    return UIColor(rgb: 0x00bcd4)
  }
  
  public static func cyan600Color() -> UIColor {
    return UIColor(rgb: 0x00acc1)
  }
  
  public static func cyan700Color() -> UIColor {
    return UIColor(rgb: 0x0097a7)
  }
  
  public static func cyan800Color() -> UIColor {
    return UIColor(rgb: 0x00838f)
  }
  
  public static func cyan900Color() -> UIColor {
    return UIColor(rgb: 0x006064)
  }
  
  public static func cyanA100Color() -> UIColor {
    return UIColor(rgb: 0x84ffff)
  }
  
  public static func cyanA200Color() -> UIColor {
    return UIColor(rgb: 0x18ffff)
  }
  
  public static func cyanA400Color() -> UIColor {
    return UIColor(rgb: 0x00e5ff)
  }
  
  public static func cyanA700Color() -> UIColor {
    return UIColor(rgb: 0x00b8d4)
  }
  
  // MARK: - teal
  
  public static func teal50Color() -> UIColor {
    return UIColor(rgb: 0xe0f2f1)
  }
  
  public static func teal100Color() -> UIColor {
    return UIColor(rgb: 0xb2dfdb)
  }
  
  public static func teal200Color() -> UIColor {
    return UIColor(rgb: 0x80cbc4)
  }
  
  public static func teal300Color() -> UIColor {
    return UIColor(rgb: 0x4db6ac)
  }
  
  public static func teal400Color() -> UIColor {
    return UIColor(rgb: 0x26a69a)
  }
  
  public static func teal500Color() -> UIColor {
    return UIColor(rgb: 0x009688)
  }
  
  public static func teal600Color() -> UIColor {
    return UIColor(rgb: 0x00897b)
  }
  
  public static func teal700Color() -> UIColor {
    return UIColor(rgb: 0x00796b)
  }
  
  public static func teal800Color() -> UIColor {
    return UIColor(rgb: 0x00695c)
  }
  
  public static func teal900Color() -> UIColor {
    return UIColor(rgb: 0x004d40)
  }
  
  public static func tealA100Color() -> UIColor {
    return UIColor(rgb: 0xa7ffeb)
  }
  
  public static func tealA200Color() -> UIColor {
    return UIColor(rgb: 0x64ffda)
  }
  
  public static func tealA400Color() -> UIColor {
    return UIColor(rgb: 0x1de9b6)
  }
  
  public static func tealA700Color() -> UIColor {
    return UIColor(rgb: 0x00bfa5)
  }
  
  // MARK: - green
  
  public static func green50Color() -> UIColor {
    return UIColor(rgb: 0xe8f5e9)
  }
  
  public static func green100Color() -> UIColor {
    return UIColor(rgb: 0xc8e6c9)
  }
  
  public static func green200Color() -> UIColor {
    return UIColor(rgb: 0xa5d6a7)
  }
  
  public static func green300Color() -> UIColor {
    return UIColor(rgb: 0x81c784)
  }
  
  public static func green400Color() -> UIColor {
    return UIColor(rgb: 0x66bb6a)
  }
  
  public static func green500Color() -> UIColor {
    return UIColor(rgb: 0x4caf50)
  }
  
  public static func green600Color() -> UIColor {
    return UIColor(rgb: 0x43a047)
  }
  
  public static func green700Color() -> UIColor {
    return UIColor(rgb: 0x388e3c)
  }
  
  public static func green800Color() -> UIColor {
    return UIColor(rgb: 0x2e7d32)
  }
  
  public static func green900Color() -> UIColor {
    return UIColor(rgb: 0x1b5e20)
  }
  
  public static func greenA100Color() -> UIColor {
    return UIColor(rgb: 0xb9f6ca)
  }
  
  public static func greenA200Color() -> UIColor {
    return UIColor(rgb: 0x69f0ae)
  }
  
  public static func greenA400Color() -> UIColor {
    return UIColor(rgb: 0x00e676)
  }
  
  public static func greenA700Color() -> UIColor {
    return UIColor(rgb: 0x00c853)
  }
  
  // MARK: - light-green
  
  public static func lightGreen50Color() -> UIColor {
    return UIColor(rgb: 0xf1f8e9)
  }
  
  public static func lightGreen100Color() -> UIColor {
    return UIColor(rgb: 0xdcedc8)
  }
  
  public static func lightGreen200Color() -> UIColor {
    return UIColor(rgb: 0xc5e1a5)
  }
  
  public static func lightGreen300Color() -> UIColor {
    return UIColor(rgb: 0xaed581)
  }
  
  public static func lightGreen400Color() -> UIColor {
    return UIColor(rgb: 0x9ccc65)
  }
  
  public static func lightGreen500Color() -> UIColor {
    return UIColor(rgb: 0x8bc34a)
  }
  
  public static func lightGreen600Color() -> UIColor {
    return UIColor(rgb: 0x7cb342)
  }
  
  public static func lightGreen700Color() -> UIColor {
    return UIColor(rgb: 0x689f38)
  }
  
  public static func lightGreen800Color() -> UIColor {
    return UIColor(rgb: 0x558b2f)
  }
  
  public static func lightGreen900Color() -> UIColor {
    return UIColor(rgb: 0x33691e)
  }
  
  public static func lightGreenA100Color() -> UIColor {
    return UIColor(rgb: 0xccff90)
  }
  
  public static func lightGreenA200Color() -> UIColor {
    return UIColor(rgb: 0xb2ff59)
  }
  
  public static func lightGreenA400Color() -> UIColor {
    return UIColor(rgb: 0x76ff03)
  }
  
  public static func lightGreenA700Color() -> UIColor {
    return UIColor(rgb: 0x64dd17)
  }
  
  // MARK: - lime
  
  public static func lime50Color() -> UIColor {
    return UIColor(rgb: 0xf9fbe7)
  }
  
  public static func lime100Color() -> UIColor {
    return UIColor(rgb: 0xf0f4c3)
  }
  
  public static func lime200Color() -> UIColor {
    return UIColor(rgb: 0xe6ee9c)
  }
  
  public static func lime300Color() -> UIColor {
    return UIColor(rgb: 0xdce775)
  }
  
  public static func lime400Color() -> UIColor {
    return UIColor(rgb: 0xd4e157)
  }
  
  public static func lime500Color() -> UIColor {
    return UIColor(rgb: 0xcddc39)
  }
  
  public static func lime600Color() -> UIColor {
    return UIColor(rgb: 0xc0ca33)
  }
  
  public static func lime700Color() -> UIColor {
    return UIColor(rgb: 0xafb42b)
  }
  
  public static func lime800Color() -> UIColor {
    return UIColor(rgb: 0x9e9d24)
  }
  
  public static func lime900Color() -> UIColor {
    return UIColor(rgb: 0x827717)
  }
  
  public static func limeA100Color() -> UIColor {
    return UIColor(rgb: 0xf4ff81)
  }
  
  public static func limeA200Color() -> UIColor {
    return UIColor(rgb: 0xeeff41)
  }
  
  public static func limeA400Color() -> UIColor {
    return UIColor(rgb: 0xc6ff00)
  }
  
  public static func limeA700Color() -> UIColor {
    return UIColor(rgb: 0xaeea00)
  }
  
  // MARK: - yellow
  
  public static func yellow50Color() -> UIColor {
    return UIColor(rgb: 0xfffde7)
  }
  
  public static func yellow100Color() -> UIColor {
    return UIColor(rgb: 0xfff9c4)
  }
  
  public static func yellow200Color() -> UIColor {
    return UIColor(rgb: 0xfff59d)
  }
  
  public static func yellow300Color() -> UIColor {
    return UIColor(rgb: 0xfff176)
  }
  
  public static func yellow400Color() -> UIColor {
    return UIColor(rgb: 0xffee58)
  }
  
  public static func yellow500Color() -> UIColor {
    return UIColor(rgb: 0xffeb3b)
  }
  
  public static func yellow600Color() -> UIColor {
    return UIColor(rgb: 0xfdd835)
  }
  
  public static func yellow700Color() -> UIColor {
    return UIColor(rgb: 0xfbc02d)
  }
  
  public static func yellow800Color() -> UIColor {
    return UIColor(rgb: 0xf9a825)
  }
  
  public static func yellow900Color() -> UIColor {
    return UIColor(rgb: 0xf57f17)
  }
  
  public static func yellowA100Color() -> UIColor {
    return UIColor(rgb: 0xffff8d)
  }
  
  public static func yellowA200Color() -> UIColor {
    return UIColor(rgb: 0xffff00)
  }
  
  public static func yellowA400Color() -> UIColor {
    return UIColor(rgb: 0xffea00)
  }
  
  public static func yellowA700Color() -> UIColor {
    return UIColor(rgb: 0xffd600)
  }
  
  // MARK: - amber
  
  public static func amber50Color() -> UIColor {
    return UIColor(rgb: 0xfff8e1)
  }
  
  public static func amber100Color() -> UIColor {
    return UIColor(rgb: 0xffecb3)
  }
  
  public static func amber200Color() -> UIColor {
    return UIColor(rgb: 0xffe082)
  }
  
  public static func amber300Color() -> UIColor {
    return UIColor(rgb: 0xffd54f)
  }
  
  public static func amber400Color() -> UIColor {
    return UIColor(rgb: 0xffca28)
  }
  
  public static func amber500Color() -> UIColor {
    return UIColor(rgb: 0xffc107)
  }
  
  public static func amber600Color() -> UIColor {
    return UIColor(rgb: 0xffb300)
  }
  
  public static func amber700Color() -> UIColor {
    return UIColor(rgb: 0xffa000)
  }
  
  public static func amber800Color() -> UIColor {
    return UIColor(rgb: 0xff8f00)
  }
  
  public static func amber900Color() -> UIColor {
    return UIColor(rgb: 0xff6f00)
  }
  
  public static func amberA100Color() -> UIColor {
    return UIColor(rgb: 0xffe57f)
  }
  
  public static func amberA200Color() -> UIColor {
    return UIColor(rgb: 0xffd740)
  }
  
  public static func amberA400Color() -> UIColor {
    return UIColor(rgb: 0xffc400)
  }
  
  public static func amberA700Color() -> UIColor {
    return UIColor(rgb: 0xffab00)
  }
  
  // MARK: - orange
  
  public static func orange50Color() -> UIColor {
    return UIColor(rgb: 0xfff3e0)
  }
  
  public static func orange100Color() -> UIColor {
    return UIColor(rgb: 0xffe0b2)
  }
  
  public static func orange200Color() -> UIColor {
    return UIColor(rgb: 0xffcc80)
  }
  
  public static func orange300Color() -> UIColor {
    return UIColor(rgb: 0xffb74d)
  }
  
  public static func orange400Color() -> UIColor {
    return UIColor(rgb: 0xffa726)
  }
  
  public static func orange500Color() -> UIColor {
    return UIColor(rgb: 0xff9800)
  }
  
  public static func orange600Color() -> UIColor {
    return UIColor(rgb: 0xfb8c00)
  }
  
  public static func orange700Color() -> UIColor {
    return UIColor(rgb: 0xf57c00)
  }
  
  public static func orange800Color() -> UIColor {
    return UIColor(rgb: 0xef6c00)
  }
  
  public static func orange900Color() -> UIColor {
    return UIColor(rgb: 0xe65100)
  }
  
  public static func orangeA100Color() -> UIColor {
    return UIColor(rgb: 0xffd180)
  }
  
  public static func orangeA200Color() -> UIColor {
    return UIColor(rgb: 0xffab40)
  }
  
  public static func orangeA400Color() -> UIColor {
    return UIColor(rgb: 0xff9100)
  }
  
  public static func orangeA700Color() -> UIColor {
    return UIColor(rgb: 0xff6d00)
  }
  
  // MARK: - deep-orange
  
  public static func deepOrange50Color() -> UIColor {
    return UIColor(rgb: 0xfbe9e7)
  }
  
  public static func deepOrange100Color() -> UIColor {
    return UIColor(rgb: 0xffccbc)
  }
  
  public static func deepOrange200Color() -> UIColor {
    return UIColor(rgb: 0xffab91)
  }
  
  public static func deepOrange300Color() -> UIColor {
    return UIColor(rgb: 0xff8a65)
  }
  
  public static func deepOrange400Color() -> UIColor {
    return UIColor(rgb: 0xff7043)
  }
  
  public static func deepOrange500Color() -> UIColor {
    return UIColor(rgb: 0xff5722)
  }
  
  public static func deepOrange600Color() -> UIColor {
    return UIColor(rgb: 0xf4511e)
  }
  
  public static func deepOrange700Color() -> UIColor {
    return UIColor(rgb: 0xe64a19)
  }
  
  public static func deepOrange800Color() -> UIColor {
    return UIColor(rgb: 0xd84315)
  }
  
  public static func deepOrange900Color() -> UIColor {
    return UIColor(rgb: 0xbf360c)
  }
  
  public static func deepOrangeA100Color() -> UIColor {
    return UIColor(rgb: 0xff9e80)
  }
  
  public static func deepOrangeA200Color() -> UIColor {
    return UIColor(rgb: 0xff6e40)
  }
  
  public static func deepOrangeA400Color() -> UIColor {
    return UIColor(rgb: 0xff3d00)
  }
  
  public static func deepOrangeA700Color() -> UIColor {
    return UIColor(rgb: 0xdd2c00)
  }
  
  // MARK: - brown
  
  public static func brown50Color() -> UIColor {
    return UIColor(rgb: 0xefebe9)
  }
  
  public static func brown100Color() -> UIColor {
    return UIColor(rgb: 0xd7ccc8)
  }
  
  public static func brown200Color() -> UIColor {
    return UIColor(rgb: 0xbcaaa4)
  }
  
  public static func brown300Color() -> UIColor {
    return UIColor(rgb: 0xa1887f)
  }
  
  public static func brown400Color() -> UIColor {
    return UIColor(rgb: 0x8d6e63)
  }
  
  public static func brown500Color() -> UIColor {
    return UIColor(rgb: 0x795548)
  }
  
  public static func brown600Color() -> UIColor {
    return UIColor(rgb: 0x6d4c41)
  }
  
  public static func brown700Color() -> UIColor {
    return UIColor(rgb: 0x5d4037)
  }
  
  public static func brown800Color() -> UIColor {
    return UIColor(rgb: 0x4e342e)
  }
  
  public static func brown900Color() -> UIColor {
    return UIColor(rgb: 0x3e2723)
  }
  
  // MARK: - grey
  
  public static func grey50Color() -> UIColor {
    return UIColor(rgb: 0xfafafa)
  }
  
  public static func grey100Color() -> UIColor {
    return UIColor(rgb: 0xf5f5f5)
  }
  
  public static func grey200Color() -> UIColor {
    return UIColor(rgb: 0xeeeeee)
  }
  
  public static func grey300Color() -> UIColor {
    return UIColor(rgb: 0xe0e0e0)
  }
  
  public static func grey400Color() -> UIColor {
    return UIColor(rgb: 0xbdbdbd)
  }
  
  public static func grey500Color() -> UIColor {
    return UIColor(rgb: 0x9e9e9e)
  }
  
  public static func grey600Color() -> UIColor {
    return UIColor(rgb: 0x757575)
  }
  
  public static func grey700Color() -> UIColor {
    return UIColor(rgb: 0x616161)
  }
  
  public static func grey800Color() -> UIColor {
    return UIColor(rgb: 0x424242)
  }
  
  public static func grey900Color() -> UIColor {
    return UIColor(rgb: 0x212121)
  }
  
  // MARK: - blue-grey
  
  public static func blueGrey50Color() -> UIColor {
    return UIColor(rgb: 0xeceff1)
  }
  
  public static func blueGrey100Color() -> UIColor {
    return UIColor(rgb: 0xcfd8dc)
  }
  
  public static func blueGrey200Color() -> UIColor {
    return UIColor(rgb: 0xb0bec5)
  }
  
  public static func blueGrey300Color() -> UIColor {
    return UIColor(rgb: 0x90a4ae)
  }
  
  public static func blueGrey400Color() -> UIColor {
    return UIColor(rgb: 0x78909c)
  }
  
  public static func blueGrey500Color() -> UIColor {
    return UIColor(rgb: 0x607d8b)
  }
  
  public static func blueGrey600Color() -> UIColor {
    return UIColor(rgb: 0x546e7a)
  }
  
  public static func blueGrey700Color() -> UIColor {
    return UIColor(rgb: 0x455a64)
  }
  
  public static func blueGrey800Color() -> UIColor {
    return UIColor(rgb: 0x37474f)
  }
  
  public static func blueGrey900Color() -> UIColor {
    return UIColor(rgb: 0x263238)
  }
  
  // MARK: - black
  
  public static func blackColor() -> UIColor {
    return UIColor(rgb: 0x000000)
  }
  
  // MARK: - white
  
  public static func whiteColor() -> UIColor {
    return UIColor(rgb: 0xffffff)
  }
}