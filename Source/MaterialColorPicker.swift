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
  
  //MARK: - Lifecycle
  
  init() {
    super.init(frame: CGRect.zero)
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


@objc public protocol MaterialColorPickerDelegate{
  /**
   Return selected index and color for index
   - parameter index: index of selected item
   - parameter color: background color of selected item
   */
  func didSelectColorAtIndex(_ materialColorPickerView: MaterialColorPicker, index: Int, color: UIColor)
  
  /**
   Return a size for the current cell (overrides default size)
   - parameter MaterialColorPickerView: current MaterialColorPicker instantse
   - parameter index:                   index of cell
   - returns: CGSize
   */
  @objc optional func sizeForCellAtIndex(_ materialColorPickerView: MaterialColorPicker, index: Int)->CGSize
}

open class MaterialColorPicker: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
  
  fileprivate var selectedIndex: IndexPath?
  lazy var colors: [UIColor] = {
    let colors = GMPalette.allColors()
    return colors
  }()
  
  open var dataSource: MaterialColorPickerDataSource?{
    didSet{
      if let dsColors = dataSource?.colors(){
        self.colors = dsColors
      }
    }
  }
  
  open var delegate: MaterialColorPickerDelegate?
  
    /// Shuffles colors within ColorPicker
  open var shuffleColors: Bool = false{
    didSet{
      if shuffleColors{ colors.shuffle() }
    }
  }
  
    /// Color for border of selected cell
  open var selectionColor: UIColor = UIColor.black
  
    /// Border width for selected Cell
  open var selectedBorderWidth: CGFloat = 2
  
   /// Set spacing between cells
  open var cellSpacing: CGFloat = 2
  
  //Setup collectionview and flow layout
  lazy var collectionView: UICollectionView = {
    let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    layout.itemSize = CGSize(width: self.bounds.height, height: self.bounds.height)
    layout.minimumInteritemSpacing = 1
    layout.minimumLineSpacing = 1
    layout.scrollDirection = .horizontal
    let collectionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)
    collectionView.dataSource = self
    collectionView.delegate = self
    collectionView.register(MaterialColorPickerCell.self, forCellWithReuseIdentifier: "Cell")
    collectionView.backgroundColor = UIColor.clear
    collectionView.showsVerticalScrollIndicator = false
    collectionView.showsHorizontalScrollIndicator = false
    return collectionView
  }()
  
  open override func layoutSubviews() {
    super.layoutSubviews()
    initialize()
    addContrains(self, subView: collectionView)
  }
  
  fileprivate func initialize() {
    collectionView.removeFromSuperview()
    self.addSubview(self.collectionView)
  }
  
  //Select index programtically
    open func selectCellAtIndex(_ index: Int){
      let indexPath = IndexPath(row: index, section: 0)
      selectedIndex = indexPath
      collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredHorizontally)
      self.delegate?.didSelectColorAtIndex(self, index: (self.selectedIndex! as NSIndexPath).item, color: colors[index])
      animateCell(manualSelection: true)
    }
  
  //MARK: CollectionView DataSouce
  open func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return colors.count
  }
  
  open func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MaterialColorPickerCell
    cell.layer.masksToBounds = true
    cell.clipsToBounds = true
    
    cell.backgroundColor = colors[(indexPath as NSIndexPath).item]
    if indexPath == selectedIndex {
      cell.layer.borderWidth = selectedBorderWidth
      cell.layer.borderColor = selectionColor.cgColor
    }else{
      cell.layer.borderWidth = 0
      cell.layer.borderColor = UIColor.clear.cgColor
    }
    return cell
  }
  
  //MARK: CollectionView delegate
  
  open func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    selectedIndex = indexPath
    animateCell()
  }
  
  open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    if let size = delegate?.sizeForCellAtIndex?(self, index: (indexPath as NSIndexPath).row){
      return size
    }
    
    return CGSize(width: self.bounds.height, height: self.bounds.height - 1)
  }
  

  open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return cellSpacing
  }
  
  
  
  /**
   Animate cell on selection
   */
  fileprivate func animateCell(manualSelection: Bool = false){
    if let cell = collectionView.cellForItem(at: selectedIndex!){
      UIView.animate(withDuration: 0.3 / 1.5, animations: {() -> Void in
        cell.transform = CGAffineTransform.identity.scaledBy(x: 1.3, y: 1.3)
        }, completion: {(finished: Bool) -> Void in
          UIView.animate(withDuration: 0.3 / 2, animations: {() -> Void in
            cell.transform = CGAffineTransform.identity.scaledBy(x: 0.9, y: 0.9)
            }, completion: {(finished: Bool) -> Void in
              UIView.animate(withDuration: 0.3 / 2, animations: {() -> Void in
                cell.transform = CGAffineTransform.identity
                if !manualSelection{
                  self.delegate?.didSelectColorAtIndex(self, index: (self.selectedIndex! as NSIndexPath).item, color: cell.backgroundColor!)
                }
                self.collectionView.reloadData()
              })
          })
      })
    }
  }
  
  fileprivate func addContrains(_ superView: UIView, subView: UIView){
    subView.translatesAutoresizingMaskIntoConstraints = false
    let views = ["myView" : subView]
    superView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[myView]|", options:[] , metrics: nil, views: views))
    superView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[myView]|", options:[] , metrics: nil, views: views))
  }
}


//Shuffle extension

extension MutableCollection where Index == Int {
  /// Shuffle the elements of `self` in-place.
  mutating func shuffle() {
    // empty and single-element collections don't shuffle
    if count < 2 { return }
    
    for i in startIndex ..< endIndex - 1 {
      let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
      if i != j {
        swap(&self[i], &self[j])
      }
    }
  }
}
