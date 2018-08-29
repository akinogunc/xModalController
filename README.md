# xModalController

[![CI Status](https://img.shields.io/travis/akinogunc/xModalController.svg?style=flat)](https://travis-ci.org/akinogunc/xModalController)
[![Version](https://img.shields.io/cocoapods/v/xModalController.svg?style=flat)](https://cocoapods.org/pods/xModalController)
[![License](https://img.shields.io/cocoapods/l/xModalController.svg?style=flat)](https://cocoapods.org/pods/xModalController)
[![Platform](https://img.shields.io/cocoapods/p/xModalController.svg?style=flat)](https://cocoapods.org/pods/xModalController)

<video src="demo.mp4" width="374" height="816" controls preload></video>

## How to use

First import the module

```swift
import xModalController
```
You can show your modal like this

```swift
//initialize your view controller
let modalVc = MyViewController()

//set a frame for it
let modalFrame = CGRect(x: 20, y: 300, width: self.view.bounds.width - 40, height: 300)

//initialize the xModalController
let modalController = xModalController(parentViewController: self, modalViewController: modalVc, modalFrame: modalFrame)

//show your view controller
modalController.showModal()
```

## Installation

xModalController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'xModalController'
```

## Author

akinogunc, akinogunc@gmail.com

## License

xModalController is available under the MIT license. See the LICENSE file for more info.
