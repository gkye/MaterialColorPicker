# MaterialColorPicker

[![CI Status](http://img.shields.io/travis/=/MaterialColorPicker.svg?style=flat)](https://travis-ci.org/=/MaterialColorPicker)
[![Version](https://img.shields.io/cocoapods/v/MaterialColorPicker.svg?style=flat)](http://cocoapods.org/pods/MaterialColorPicker)
[![License](https://img.shields.io/cocoapods/l/MaterialColorPicker.svg?style=flat)](http://cocoapods.org/pods/MaterialColorPicker)
[![Platform](https://img.shields.io/cocoapods/p/MaterialColorPicker.svg?style=flat)](http://cocoapods.org/pods/MaterialColorPicker)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

# Usage

#### Delegate
```swift
func didSelectColorAtIndex(view: UIView, index: Int, color: UIColor)
```
Returns the index and color of the selected item.

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

## Installation

MaterialColorPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MaterialColorPicker"
```

## Author

George Kye

## License

MaterialColorPicker is available under the MIT license. See the LICENSE file for more info.
