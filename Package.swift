// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "OPGGTestAPIKit",
    products: [
        .library(
            name: "OPGGTestAPIKit",
            targets: [
                "OPGGTestAPIKit",
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", .upToNextMajor(from: "1.5.2")),
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.3")),
        .package(url: "https://github.com/jaemyeong/ErrorKit.git", .upToNextMajor(from: "0.1.12")),
        .package(url: "https://github.com/apple/swift-docc-plugin.git", .upToNextMajor(from: "1.1.0")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.5.0")),
    ],
    targets: [
        .target(
            name: "OPGGTestAPIKit",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "RxMoya", package: "Moya"),
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "ErrorKit", package: "ErrorKit"),
            ]
        ),
        .testTarget(
            name: "OPGGTestAPIKitTests",
            dependencies: [
                "OPGGTestAPIKit",
            ]
        ),
    ]
)
