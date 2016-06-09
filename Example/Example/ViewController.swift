//
//  ViewController.swift
//  Example
//
//  Created by George on 2016-06-09.
//  Copyright © 2016 George Kye. All rights reserved.
//

import UIKit


class ViewController: UIViewController, MaterialColorPickerDelegate {
  
  var pickerView: MaterialColorPicker!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    pickerView = MaterialColorPicker(frame: CGRect(x: 0, y: 20, width: self.view.frame.width, height: 60))
    self.view.addSubview(pickerView)
    pickerView.delegate = self
    pickerView.shuffleColors = true
    //    pickerView.dataSource = self
    
  }

  func didSelectColorAtIndex(view: UIView, index: Int, color: UIColor) {
    print("Index is ", index)
    self.view.backgroundColor = color
  }
  
  
}