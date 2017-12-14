# MirrorExtensions

![Requires Swift > 4](https://img.shields.io/badge/Language-Swift%204-F04C3E.svg) ![Licensed under the MIT license](https://img.shields.io/badge/License-MIT-lightgrey.svg)

_MirrorExtensions_ is a library that adds various missing operations related to `Mirror`s.

## Table Of Contents

- [Installation](#installation)
    - [Swift Package Manager](#swift-package-manager)
- [Contributing](#contributing)
- [Testing](#testing)
- [API](#api)
    - [Method Extensions on `Mirror`](#method-extensions-on-mirror)
        - [`children()`](#children)

## Installation

### Swift Package Manager

To install this package, add it as a dependency to your project's manifest file (`Package.swift`), e.g., a package named `"Example"` whose main product is a library with no dependencies other than MirrorExtensions would be defined as such:

```swift
// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "Example",
  products: [
    .library(name: "Example", targets: ["Example"])
  ],
  dependencies: [
    .package(url: "https://github.com/dennisvennink/MirrorExtensions", from: "0.1.1")
  ],
  targets: [
    .target(name: "Example", dependencies: ["MirrorExtensions"]),
    .testTarget(name: "ExampleTests", dependencies: ["Example"])
  ]
)
```

Then, `import` it into your project:

```swift
import MirrorExtensions
```

## Contributing

To contribute, think of a missing feature or issue to work on, then fork the project and create your feature branch:

```shell
git checkout -b my-new-feature
```

When you're done implementing your feature, commit your changes:

```shell
git commit -am "Add some new feature"
```

Then push to the feature branch:

```shell
git push origin my-new-feature
```

Finally, submit a pull request!

## Testing

All tests are written in [_XCTest_](https://developer.apple.com/documentation/xctest). To perform them, run:

```shell
swift test
```

## API

### Method Extensions on `Mirror`

#### `children()`

Creates a `Collection` that contains, as elements, all of the children of `self` that conform to `T`.

##### Example

```swift
struct Struct {
  let boolean1 = true
  let integer1 = 1
  let string1 = "a"
  let boolean2 = false
  let integer2 = 2
  let string2 = "b"
  let integer3 = 3
}

print(Mirror(reflecting: Struct()).children() as [Int])
// [1, 2, 3]
```

##### Declaration

```swift
func children <T> () -> [T]
```

##### Parameters

None.

##### Returns

A `Collection` that contains, as elements, all of the children of `self` that conform to `T`.
