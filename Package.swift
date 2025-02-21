// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Eip20Kit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Eip20Kit",
            targets: ["Eip20Kit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/curdicu/EvmKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsCryptoKit.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsExtensions.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "Eip20Kit",
            dependencies: [
                "BigInt",
                .product(name: "GRDB", package: "GRDB.swift"),
                .product(name: "EvmKit", package: "EvmKit"),    
                .product(name: "HsCryptoKit", package: "HsCryptoKit"),
                .product(name: "HsExtensions", package: "HsExtensions"),
            ]
        ),
    ]
)
