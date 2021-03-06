# MaterialColorPicker

[![codebeat badge](https://codebeat.co/badges/2ca55682-c811-43ce-8142-f90d4cf29375)](https://codebeat.co/projects/github-com-gkye-materialcolorpicker)
[![Version](https://img.shields.io/cocoapods/v/MaterialColorPicker.svg?style=flat)](http://cocoapods.org/pods/MaterialColorPicker)
[![License](https://img.shields.io/cocoapods/l/MaterialColorPicker.svg?style=flat)](http://cocoapods.org/pods/MaterialColorPicker)
[![Platform](https://img.shields.io/cocoapods/p/MaterialColorPicker.svg?style=flat)](http://cocoapods.org/pods/MaterialColorPicker)

![Demo Gif](https://rawgit.com/gkye/MaterialColorPicker/master/demo.gif)

## Installation

MaterialColorPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MaterialColorPicker"
```

# Usage

#### Delegate
```swift
func didSelectColorAtIndex(view: UIView, index: Int, color: UIColor)
```
Returns the index and color of the selected item.

```swift
 func sizeForCellAtIndex(MaterialColorPickerView: MaterialColorPicker, index: Int)->CGSize
```
Set size of cell at a spefic index
#### DataSource

```swift
func colors()->[UIColor]
```
Set colors for MaterialColorPicker (Default colors will be used if no `dataSource` set)
<a href="https://github.com/katopz/google-material-color-swift"> google-material-color-swift by katopz included in project </a>

#### Properties
```swift
public var shuffleColors: Bool = false //Shuffles colors within ColorPicker
```
```swift
public func selectCellAtIndex(index: Int)
```
Programtically select a cell at an index

## Author

George Kye

## License

MaterialColorPicker is available under the MIT license. See the LICENSE file for more info.

# Change Log
<a href="https://github.com/gkye/MaterialColorPicker/releases/tag/0.2.0">0.2.0 </a>
- Updated project to support swift3
- Updated demo project to reflect changes

<a href="https://github.com/gkye/MaterialColorPicker/releases/tag/0.1.8">0.1.8 </a>
* Added public selectionColor property. 
* Added selectedBorderWidth property. 
* Added cellSpacing property. 


<a href="https://github.com/gkye/MaterialColorPicker/releases/tag/0.1.6">0.1.6 </a>
-  Added `selectCellAtIndex` function and `sizeForCellAtIndex` delegate
  
<a href="https://github.com/gkye/MaterialColorPicker/releases/tag/0.1.4"> 0.1.5 </a> 
- Added `itemSize` public property to allow configuration of color picker cell.



