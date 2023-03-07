# OPGGTestAPIKit

[![Swift](https://github.com/jaemyeong/OPGGTestAPIKit/actions/workflows/swift.yml/badge.svg)](https://github.com/jaemyeong/OPGGTestAPIKit/actions/workflows/swift.yml)

## Overview

OP.GG Test API 입니다.

## Requirements

- macOS Ventura 13.2.1
- Xcode 14.2

## Installation

### Swift Package Manager

```swift
.package(url: "https://github.com/jaemyeong/OPGGTestAPIKit.git", .upToNextMajor(from: "0.1.2"))
```

## Usage

```swift
import OPGGTestAPIKit

OPGGTestAPIProvider
    .shared
    .request(target: .summoner(name: "genetory")) { (result: Result<Summoner, Error>) in
        ...
    }
```

## Documentation

- [OPGGTestAPIKit](https://jaemyeong.github.io/OPGGTestAPIKit/docs/documentation/opggtestapikit/)

## License

- [MIT](LICENSE)

## Author

[Jaemyeong Jin](https://github.com/jaemyeong) ([jaemyeong@me.com](mailto:jaemyeong@me.com))
