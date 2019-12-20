# CCViewCaptureKit

A nice iOS View Capture Library which can capture all content.

CCViewCaptureKit could convert all content of UIWebView to a UIImage.

一个用起来还不错的iOS截图库.(支持截取所有内容, 适用于所有ScrollView组成的视图, 包括WKWebView)

CCViewCaptureKit支持截取网页以及ScrollView的所有内容
[![Swift 4.0+](https://img.shields.io/badge/Swift-4.0%2B-orange.svg)](https://github.com/zixun/AssistiveButton)
[![CI Status](https://img.shields.io/travis/zhangqixcu@gmail.com/CCViewCaptureKit.svg?style=flat)](https://travis-ci.org/zhangqixcu@gmail.com/CCViewCaptureKit)
[![Version](https://img.shields.io/cocoapods/v/CCViewCaptureKit.svg?style=flat)](https://cocoapods.org/pods/CCViewCaptureKit)
[![License](https://img.shields.io/cocoapods/l/CCViewCaptureKit.svg?style=flat)](https://cocoapods.org/pods/CCViewCaptureKit)
[![Platform](https://img.shields.io/cocoapods/p/CCViewCaptureKit.svg?style=flat)](https://cocoapods.org/pods/CCViewCaptureKit)

 <img src="https://raw.githubusercontent.com/startry/SwViewCapture/master/capture_demo.gif" width ="320" alt="Example" align=center />

## Feature

1. API is more easy to use.
    * use swift extension
2. Support to capture all content of scrollView. 
    * eg: UIScrollView, UITableView, UIWebView
3. Support capture WKWebView. 
    * WKWebview is hard to capture; 
    * WKWebView could be capture like UIWebView
4. Flasing will not appear in the process of Screenshots.
    * SwCaptureView use a fake screenshots as a cover which over target view. All the action of target will be hidden below the fake screenshots.

###功能

1. API更容易使用.
    * 使用Extension去封装API

2. 支持截取滚动视图内的所有内容.
    * 支持UIScrollView, UITableView, UIWebView

3. 支持截取WKWebView的内容.
    * 因为WKWebView的内部实现问题, WKWebView比较难去截屏
    * 目前SwViewCapture对WKWebView的支持比较完美, 已经提供了两种截图方法, 非滚动的截图方式已经解决了`position: fixed`的问题
4. 截图过程中不会出现视图闪烁.
    * 截图过程中, 使用一张伪装截图遮盖屏幕, 底层截图活动不透明化。
    

## Usage

* Capture basic screenshots (size of view's frame)

``` Swift
import CCViewCaptureKit
// ...
view.swCapture { (capturedImage) -> Void in
    // capturedImage is a UIImage.           
}
```

* Capture all content screenshots (size of content)

``` Swift
import CCViewCaptureKit
// ...
view.swContentCapture { (capturedImage) -> Void in
    // capturedImage is a UIImage.           
}
```

###用法

* 普通截屏(屏幕大小)

``` Swift
import CCViewCaptureKit
// ...
view.swCapture { (capturedImage) -> Void in
    // capturedImage is a UIImage.           
}
```

* 内容截屏(全部内容的大小)

``` Swift
import CCViewCaptureKit
// ...
view.swContentCapture { (capturedImage) -> Void in
    // capturedImage is a UIImage.           
}
```

* 滚动截屏

``` Swift
import CCViewCaptureKit
// ...
view.swContentScrollCapture { (capturedImage) -> Void in
    // capturedImage is a UIImage.           
}
```

## Requirement

iOS 10.0+, Swift 4.0+ (Compatiable)

SwViewCapture is available through [CocoaPods](http://cocoapods.org) now. To Install it, simply and the following line to your Podfile:

``` ruby
pod 'CCViewCaptureKit'
```

Or, if you’re using [Carthage](https://github.com/Carthage/Carthage), add SwViewCapture to your Cartfile:

``` 
github 'Bogon/CCViewCaptureKit'
```
## Author

name: Bogon

email: zhangqixcu@gmail.com

github: [Bogon](https://github.com/Bogon)

## License

CCViewCaptureKit is available under the MIT license. See the LICENSE file for more info.
