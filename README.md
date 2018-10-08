![Swift](https://img.shields.io/badge/Swift-4.2-orange.svg) [![Build Status](https://travis-ci.com/devmjun/SimpleCell.svg?branch=master)](https://travis-ci.com/devmjun/SimpleCell) [![pod compatible](https://img.shields.io/cocoapods/v/SimpleCell.svg?style=flat)](https://cocoapods.org/pods/SimpleCell) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![codecov](https://codecov.io/gh/devmjun/SimpleCell/branch/master/graph/badge.svg)](https://codecov.io/gh/devmjun/SimpleCell)

# SimpleCell

A Swift Extension for Reusable Collection View and TableView Cell.

## Summary

### Before 

```swift
tableView.register(UItableViewCell, forCellWithReuseIdentifier: "Cell")
tableView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! UserCell
```

It can cause a mistake if writing an identifier manually.

### After

```swift
tableView.register(cell: TableViewCell.self)
let cell = tableView.dequeue(TableViewCell.self)!
```

an identifier is generated automatically with the same name as its class name.

## Usage

### TableView 

```swift
// 1. register
tableView.register(cell: TableViewCell.self)

// 2. dequeue 
tableView.dequeue(TableViewCell.self)! 
or
tableView.dequeue(TableViewCell.self, indexPath: indexPath)!
```

### CollectionView 

```swift
// 1. register
collectionView.register(cell: CollectionViewCell.self)
or when using supplementary views. 
collectionView.register(cell: CollectionReusableView.self, forSupplementaryViewOfKind: .header)
collectionView.register(cell: CollectionReusableView.self, forSupplementaryViewOfKind: .footer)

// 2. dequeue 
collectionView.dequeue(CollectionView.self)! 
or when using supplementary views. 
collectionView.dequeue(CollectionReusableHeaderView.self, .header, indexPath: indexPath)!
collectionView.dequeue(CollectionReusableFooterView.self, .footer, indexPath: indexPath)!
```

## Requirements 

SimpleCell requires iOS 8 or above and is written in Swift 4.2.

## Installation

### CocoaPods
CaseContainer is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your podfile: 

```ruby
pod 'SimpleCell', '~> 0.2.0'
```

And run  `pod install`. 

### Carthage

CaseContainer is available through [Carthage](https://github.com/Carthage/Carthage). Simply install carthage with [Homebrew](https://brew.sh/) using the following command: 

```bash
$ brew update
$ brew install carthage
```

add CaseContainer to your `Cartfile`: 

```ogdl
github "devmjun/SimpleCell" ~> 0.2.0
```

And run `carthage update`.

## Contributing

Bug reports, pull request and any discussion are welcome

## License 

SimpleCell is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT)