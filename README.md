# StatsView

A simple stats view to build up a simple dashboard in app. A StatsView makes implementation of statistics UI easy.

[![CocoaPods](https://img.shields.io/cocoapods/dt/StatsView.svg)](https://cocoapods.org/pods/StatsView)
[![GitHub stars](https://img.shields.io/github/stars/kf99916/StatsView.svg)](https://github.com/kf99916/StatsView/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/kf99916/StatsView.svg)](https://github.com/kf99916/StatsView/network)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/StatsView.svg)](https://cocoapods.org/pods/StatsView)
[![Platform](https://img.shields.io/cocoapods/p/StatsView.svg)](https://github.com/kf99916/StatsView)
[![GitHub license](https://img.shields.io/github/license/kf99916/StatsView.svg)](https://github.com/kf99916/StatsView/blob/master/LICENSE)

![StatsView](/screenshots/StatsView.png 'StatsView')

## Requirements

- Swift 4.0 or higher

### v1.0.0

- Swift 4

### v1.1.0

- Swift 4.2

### v1.2.0

- Swift 5

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate StatsView into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'StatsView'
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding StatsView as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/kf99916/StatsView.git")
]
```

## Usage

### Import

```swift
import StatsView
```

### Integration

### StatsView

A veiw to show the statistics

`var title: NSAttributedString?` the title  
`var titleDescription: NSAttributedString?` the description for the title  
`var titleDescriptionAlignment: NSTextAlignment` configure the alignment of the description label related with the title label (default `NSTextAlignment.center`)

## Apps using StatsView

If you are using StatsView in your app and want to be listed here, simply create a pull request.

I am always curious who is using my projects :)

[Hikingbook](https://itunes.apple.com/app/id1067838748) - by Zheng-Xiang Ke

![Hikingbook](apps/Hikingbook.png)

## Demo

StatsViewDemo is a simple demo app using StatsView.

## Author

Zheng-Xiang Ke, kf99916@gmail.com

## License

StatsView is available under the MIT license. See the LICENSE file for more info.
