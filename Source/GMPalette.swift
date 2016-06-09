//
//  GMPalette.swift
//  GMColor
//
//  Created by Todsaporn Banjerdkit (katopz) on 12/22/14.
//  Copyright (c) 2014 Debokeh. All rights reserved.
//

import UIKit

public struct GMPalette {
  
  public static func MaterialPickerColors() -> [UIColor] {
    return [
      GMColor.redA700Color(), GMColor.pinkA700Color(), GMColor.pink50Color(),
      GMColor.purple50Color(), GMColor.deepPurpleA700Color(), GMColor.indigoA700Color(),
      GMColor.blue50Color(), GMColor.lightBlueA700Color(), GMColor.cyanA700Color(),
      GMColor.tealA700Color(), GMColor.greenA700Color(), GMColor.lightGreenA700Color(),
      GMColor.limeA700Color(), GMColor.yellowA700Color(), GMColor.yellowA700Color(),
      GMColor.amberA700Color(), GMColor.orangeA700Color(), GMColor.grey500Color(),
      GMColor.blueGrey300Color()
    ]
  }
   static func all() -> [[UIColor]] {
    return [red(), pink(), purple(),
            deepPurple(), indigo(), blue(),
            lightBlue(), cyan(), teal(),
            green(), lightGreen(), lime(),
            yellow(), amber(), orange(),
            deepOrange(), brown(), grey(),
            blueGrey(), blackAndWhite()
    ]
  }
  
  public static func allColors()->[UIColor]{
    var colors = [UIColor]()
    for c in all(){
      c.forEach{
        colors.append($0)
      }
    }
    return colors
  }
  
  public static func red() -> [UIColor] {
    return [GMColor.red50Color(), GMColor.red100Color(),
            GMColor.red200Color(), GMColor.red300Color(),
            GMColor.red400Color(), GMColor.red500Color(),
            GMColor.red600Color(), GMColor.red700Color(),
            GMColor.red800Color(), GMColor.red900Color(),
            GMColor.redA100Color(), GMColor.redA200Color(),
            GMColor.redA400Color(), GMColor.redA700Color()
    ]
  }
  
  public static func pink() -> [UIColor] {
    return [GMColor.pink50Color(), GMColor.pink100Color(),
            GMColor.pink200Color(), GMColor.pink300Color(),
            GMColor.pink400Color(), GMColor.pink500Color(),
            GMColor.pink600Color(), GMColor.pink700Color(),
            GMColor.pink800Color(), GMColor.pink900Color(),
            GMColor.pinkA100Color(), GMColor.pinkA200Color(),
            GMColor.pinkA400Color(), GMColor.pinkA700Color()
    ]
  }
  
  public static func purple() -> [UIColor] {
    return [GMColor.purple50Color(), GMColor.purple100Color(),
            GMColor.purple200Color(), GMColor.purple300Color(),
            GMColor.purple400Color(), GMColor.purple500Color(),
            GMColor.purple600Color(), GMColor.purple700Color(),
            GMColor.purple800Color(), GMColor.purple900Color(),
            GMColor.purpleA100Color(), GMColor.purpleA200Color(),
            GMColor.purpleA400Color(), GMColor.purpleA700Color()
    ]
  }
  
  public static func deepPurple() -> [UIColor] {
    return [GMColor.deepPurple50Color(), GMColor.deepPurple100Color(),
            GMColor.deepPurple200Color(), GMColor.deepPurple300Color(),
            GMColor.deepPurple400Color(), GMColor.deepPurple500Color(),
            GMColor.deepPurple600Color(), GMColor.deepPurple700Color(),
            GMColor.deepPurple800Color(), GMColor.deepPurple900Color(),
            GMColor.deepPurpleA100Color(), GMColor.deepPurpleA200Color(),
            GMColor.deepPurpleA400Color(), GMColor.deepPurpleA700Color()
    ]
  }
  
  public static func indigo() -> [UIColor] {
    return [GMColor.indigo50Color(), GMColor.indigo100Color(),
            GMColor.indigo200Color(), GMColor.indigo300Color(),
            GMColor.indigo400Color(), GMColor.indigo500Color(),
            GMColor.indigo600Color(), GMColor.indigo700Color(),
            GMColor.indigo800Color(), GMColor.indigo900Color(),
            GMColor.indigoA100Color(), GMColor.indigoA200Color(),
            GMColor.indigoA400Color(), GMColor.indigoA700Color()
    ]
  }
  
  public static func blue() -> [UIColor] {
    return [GMColor.blue50Color(), GMColor.blue100Color(),
            GMColor.blue200Color(), GMColor.blue300Color(),
            GMColor.blue400Color(), GMColor.blue500Color(),
            GMColor.blue600Color(), GMColor.blue700Color(),
            GMColor.blue800Color(), GMColor.blue900Color(),
            GMColor.blueA100Color(), GMColor.blueA200Color(),
            GMColor.blueA400Color(), GMColor.blueA700Color()
    ]
  }
  
  public static func lightBlue() -> [UIColor] {
    return [GMColor.lightBlue50Color(), GMColor.lightBlue100Color(),
            GMColor.lightBlue200Color(), GMColor.lightBlue300Color(),
            GMColor.lightBlue400Color(), GMColor.lightBlue500Color(),
            GMColor.lightBlue600Color(), GMColor.lightBlue700Color(),
            GMColor.lightBlue800Color(), GMColor.lightBlue900Color(),
            GMColor.lightBlueA100Color(), GMColor.lightBlueA200Color(),
            GMColor.lightBlueA400Color(), GMColor.lightBlueA700Color()
    ]
  }
  
  public static func cyan() -> [UIColor] {
    return [GMColor.cyan50Color(), GMColor.cyan100Color(),
            GMColor.cyan200Color(), GMColor.cyan300Color(),
            GMColor.cyan400Color(), GMColor.cyan500Color(),
            GMColor.cyan600Color(), GMColor.cyan700Color(),
            GMColor.cyan800Color(), GMColor.cyan900Color(),
            GMColor.cyanA100Color(), GMColor.cyanA200Color(),
            GMColor.cyanA400Color(), GMColor.cyanA700Color()
    ]
  }
  
  
  public static func teal() -> [UIColor] {
    return [GMColor.teal50Color(), GMColor.teal100Color(),
            GMColor.teal200Color(), GMColor.teal300Color(),
            GMColor.teal400Color(), GMColor.teal500Color(),
            GMColor.teal600Color(), GMColor.teal700Color(),
            GMColor.teal800Color(), GMColor.teal900Color(),
            GMColor.tealA100Color(), GMColor.tealA200Color(),
            GMColor.tealA400Color(), GMColor.tealA700Color()
    ]
  }
  
  public static func green() -> [UIColor] {
    return [GMColor.green50Color(), GMColor.green100Color(),
            GMColor.green200Color(), GMColor.green300Color(),
            GMColor.green400Color(), GMColor.green500Color(),
            GMColor.green600Color(), GMColor.green700Color(),
            GMColor.green800Color(), GMColor.green900Color(),
            GMColor.greenA100Color(), GMColor.greenA200Color(),
            GMColor.greenA400Color(), GMColor.greenA700Color()
    ]
  }
  
  public static func lightGreen() -> [UIColor] {
    return [GMColor.lightGreen50Color(), GMColor.lightGreen100Color(),
            GMColor.lightGreen200Color(), GMColor.lightGreen300Color(),
            GMColor.lightGreen400Color(), GMColor.lightGreen500Color(),
            GMColor.lightGreen600Color(), GMColor.lightGreen700Color(),
            GMColor.lightGreen800Color(), GMColor.lightGreen900Color(),
            GMColor.lightGreenA100Color(), GMColor.lightGreenA200Color(),
            GMColor.lightGreenA400Color(), GMColor.lightGreenA700Color()
    ]
  }
  
  public static func lime() -> [UIColor] {
    return [GMColor.lime50Color(), GMColor.lime100Color(),
            GMColor.lime200Color(), GMColor.lime300Color(),
            GMColor.lime400Color(), GMColor.lime500Color(),
            GMColor.lime600Color(), GMColor.lime700Color(),
            GMColor.lime800Color(), GMColor.lime900Color(),
            GMColor.limeA100Color(), GMColor.limeA200Color(),
            GMColor.limeA400Color(), GMColor.limeA700Color()
    ]
  }
  
  public static func yellow() -> [UIColor] {
    return [GMColor.yellow50Color(), GMColor.yellow100Color(),
            GMColor.yellow200Color(), GMColor.yellow300Color(),
            GMColor.yellow400Color(), GMColor.yellow500Color(),
            GMColor.yellow600Color(), GMColor.yellow700Color(),
            GMColor.yellow800Color(), GMColor.yellow900Color(),
            GMColor.yellowA100Color(), GMColor.yellowA200Color(),
            GMColor.yellowA400Color(), GMColor.yellowA700Color()
    ]
  }
  
  public static func amber() -> [UIColor] {
    return [GMColor.amber50Color(), GMColor.amber100Color(),
            GMColor.amber200Color(), GMColor.amber300Color(),
            GMColor.amber400Color(), GMColor.amber500Color(),
            GMColor.amber600Color(), GMColor.amber700Color(),
            GMColor.amber800Color(), GMColor.amber900Color(),
            GMColor.amberA100Color(), GMColor.amberA200Color(),
            GMColor.amberA400Color(), GMColor.amberA700Color()
    ]
  }
  
  public static func orange() -> [UIColor] {
    return [GMColor.orange50Color(), GMColor.orange100Color(),
            GMColor.orange200Color(), GMColor.orange300Color(),
            GMColor.orange400Color(), GMColor.orange500Color(),
            GMColor.orange600Color(), GMColor.orange700Color(),
            GMColor.orange800Color(), GMColor.orange900Color(),
            GMColor.orangeA100Color(), GMColor.orangeA200Color(),
            GMColor.orangeA400Color(), GMColor.orangeA700Color()
    ]
  }
  
  public static func deepOrange() -> [UIColor] {
    return [GMColor.deepOrange50Color(), GMColor.deepOrange100Color(),
            GMColor.deepOrange200Color(), GMColor.deepOrange300Color(),
            GMColor.deepOrange400Color(), GMColor.deepOrange500Color(),
            GMColor.deepOrange600Color(), GMColor.deepOrange700Color(),
            GMColor.deepOrange800Color(), GMColor.deepOrange900Color(),
            GMColor.deepOrangeA100Color(), GMColor.deepOrangeA200Color(),
            GMColor.deepOrangeA400Color(), GMColor.deepOrangeA700Color()
    ]
  }
  
  public static func brown() -> [UIColor] {
    return [GMColor.brown50Color(), GMColor.brown100Color(),
            GMColor.brown200Color(), GMColor.brown300Color(),
            GMColor.brown400Color(), GMColor.brown500Color(),
            GMColor.brown600Color(), GMColor.brown700Color(),
            GMColor.brown800Color(), GMColor.brown900Color()
    ]
  }
  
  public static func grey() -> [UIColor] {
    return [GMColor.grey50Color(), GMColor.grey100Color(),
            GMColor.grey200Color(), GMColor.grey300Color(),
            GMColor.grey400Color(), GMColor.grey500Color(),
            GMColor.grey600Color(), GMColor.grey700Color(),
            GMColor.grey800Color(), GMColor.grey900Color()
    ]
  }
  
  public static func blueGrey() -> [UIColor] {
    return [GMColor.blueGrey50Color(), GMColor.blueGrey100Color(),
            GMColor.blueGrey200Color(), GMColor.blueGrey300Color(),
            GMColor.blueGrey400Color(), GMColor.blueGrey500Color(),
            GMColor.blueGrey600Color(), GMColor.blueGrey700Color(),
            GMColor.blueGrey800Color(), GMColor.blueGrey900Color()
    ]
  }
  
  public static func blackAndWhite() -> [UIColor] {
    return [GMColor.blackColor(), GMColor.whiteColor()]
  }
}