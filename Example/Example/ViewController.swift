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
    pickerView.selectionColor = UIColor.cyan
    pickerView.selectedBorderWidth = 5
    pickerView.cellSpacing = 10
    
  }
  
  func didSelectColorAtIndex(_ MaterialColorPickerView: MaterialColorPicker, index: Int, color: UIColor) {
    print("Index is ", index)
    self.view.backgroundColor = color
  }
  
  func sizeForCellAtIndex(_ MaterialColorPickerView: MaterialColorPicker, index: Int) -> CGSize {
    if index == 3{
      return CGSize(width: 50, height: 50)
    }else{
      return CGSize(width: 50, height: 50)
    }
  }
  
  
  @IBAction func selectIndex(_ sender: UIButton){
    pickerView.selectCellAtIndex(30)
  }
  
}
