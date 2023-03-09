# ``OPGGTestAPIKit``

## Overview

OP.GG Test API 입니다.

## Requirements

- macOS Ventura 13.2.1
- Xcode 14.2

## Installation

### Swift Package Manager

```swift
.package(url: "https://github.com/jaemyeong/OPGGTestAPIKit.git", .upToNextMajor(from: "0.1.4"))
```

## Usage

```swift
import OPGGTestAPIKit

OPGGTestAPIProvider
    .shared
    .request(target: .summoner(name: "genetory"), mappableType: Summoner.self) { result in
        ...
    }
```

## Documentation

- [OPGGTestAPIKit](https://jaemyeong.github.io/OPGGTestAPIKit/docs/documentation/opggtestapikit/)

## License

- MIT

## Author

[Jaemyeong Jin](https://github.com/jaemyeong) ([jaemyeong@me.com](mailto:jaemyeong@me.com))
