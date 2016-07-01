//
//  MaterialColorPicker.swift
//  MaterialColorPicker
//
//  Created by George Kye on 2016-06-09.
//  Copyright © 2016 George Kye. All rights reserved.
//

import Foundation
import UIKit

private class MaterialColorPickerCell: UICollectionViewCell{
  
  func setup(){
    self.layer.cornerRadius = self.bounds.width / 2
  }
  
  init() {
    super.init(frame: CGRectZero)
    setup()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}


@objc public protocol MaterialColorPickerDataSource {
  /**
   Set colors for MaterialColorPicker (optional. Default colors will be used if nil)
   - returns: should return an array of `UIColor`
   */
  func colors()->[UIColor]
}


public protocol MaterialColorPickerDelegate{
  /**
   Return selected index and color for index
   - parameter index: index of selected item
   - parameter color: background color of selected item
   */
  func didSelectColorAtIndex(MaterialColorPickerView: MaterialColorPicker, index: Int, color: UIColor)
}

public class MaterialColorPicker: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
  
  private var selectedIndex: NSIndexPath?
  lazy var colors: [UIColor] = {
    let colors = GMPalette.allColors()
    return colors
  }()
  
  public var dataSource: MaterialColorPickerDataSource?{
    didSet{
      if let dsColors = dataSource?.colors(){
        self.colors = dsColors
      }
    }
  }
  
  public var delegate: MaterialColorPickerDelegate?
  
  public var shuffleColors: Bool = false{
    didSet{
      if shuffleColors{ colors.shuffleInPlace() }
    }
  }
  
  public var itemSize: CGSize!{
    didSet{
      collectionView.reloadData()
      collectionView.layoutIfNeeded()
    }
  }
  
  
  //Setup collectionview and flow layout
  
  lazy var collectionView: UICollectionView = {
    let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    layout.itemSize = CGSize(width: self.bounds.height, height: self.bounds.height)
    layout.minimumInteritemSpacing = 1
    layout.minimumLineSpacing = 1
    layout.scrollDirection = .Horizontal
    let collectionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)
    collectionView.dataSource = self
    collectionView.delegate = self
    collectionView.registerClass(MaterialColorPickerCell.self, forCellWithReuseIdentifier: "Cell")
    collectionView.backgroundColor = UIColor.clearColor()
    collectionView.showsVerticalScrollIndicator = false
    collectionView.showsHorizontalScrollIndicator = false
    return collectionView
  }()
  
  //  public override init(frame: CGRect) {
  //    super.init(frame: frame)
  //    self.initialize()
  //  }
  //
  //  required public init?(coder aDecoder: NSCoder) {
  //    fatalError("init(coder:) has not been implemented")
  //  }
  
  public override func layoutSubviews() {
    super.layoutSubviews()
    initialize()
    addContrains(self, subView: collectionView)
  }
  
  private func initialize() {
    collectionView.removeFromSuperview()
    self.addSubview(self.collectionView)
  }
  
  //Select index programtically
  //FIXME: index not selected first time
  
  //  public func selectIndex(index: Int){
  //    let indexPath = NSIndexPath(forRow: index, inSection: 0)
  //    selectedIndex = indexPath
  //    collectionView.selectItemAtIndexPath(indexPath, animated: true, scrollPosition: .CenteredHorizontally)
  //    animateCell()
  //  }
  //
  
  
  //MARK: CollectionView DataSouce
  public func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return colors.count
  }
  
  public func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! MaterialColorPickerCell
    cell.layer.masksToBounds = true
    cell.clipsToBounds = true
    
    cell.backgroundColor = colors[indexPath.item]
    if indexPath == selectedIndex {
      cell.layer.borderWidth = 3
      cell.layer.borderColor = UIColor.blackColor().CGColor
    }else{
      cell.layer.borderWidth = 0
      cell.layer.borderColor = UIColor.clearColor().CGColor
    }
    return cell
  }
  
  //MARK: CollectionView delegate
  
  public func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    selectedIndex = indexPath
    animateCell()
  }
  
  public func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    if itemSize != nil{
      return itemSize
    }
    return CGSize(width: self.bounds.height, height: self.bounds.height - 1)
  }
  
  
  
  /**
   Animate cell on selection
   */
  private func animateCell(){
    if let cell = collectionView.cellForItemAtIndexPath(selectedIndex!){
      UIView.animateWithDuration(0.3 / 1.5, animations: {() -> Void in
        cell.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.3, 1.3)
        }, completion: {(finished: Bool) -> Void in
          UIView.animateWithDuration(0.3 / 2, animations: {() -> Void in
            cell.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9)
            }, completion: {(finished: Bool) -> Void in
              UIView.animateWithDuration(0.3 / 2, animations: {() -> Void in
                cell.transform = CGAffineTransformIdentity
                self.delegate?.didSelectColorAtIndex(self, index: self.selectedIndex!.item, color: cell.backgroundColor!)
                self.collectionView.reloadData()
              })
          })
      })
    }
  }
  
  private func addContrains(superView: UIView, subView: UIView){
    subView.translatesAutoresizingMaskIntoConstraints = false
    let views = ["myView" : subView]
    superView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[myView]|", options:[] , metrics: nil, views: views))
    superView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[myView]|", options:[] , metrics: nil, views: views))
  }
}


//Shuffle extension

extension MutableCollectionType where Index == Int {
  /// Shuffle the elements of `self` in-place.
  mutating func shuffleInPlace() {
    // empty and single-element collections don't shuffle
    if count < 2 { return }
    
    for i in 0..<count - 1 {
      let j = Int(arc4random_uniform(UInt32(count - i))) + i
      guard i != j else { continue }
      swap(&self[i], &self[j])
    }
  }
}