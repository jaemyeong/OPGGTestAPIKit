// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "OPGGTestAPIKit",
    defaultLocalization: "ko",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
    ],
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
    ],
    targets: [
        .target(
            name: "OPGGTestAPIKit",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "RxMoya", package: "Moya"),
            ],
            resources: [
                .process("Resources"),
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
