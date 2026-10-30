// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "add_to_wallet",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "add-to-wallet", targets: ["add_to_wallet"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "add_to_wallet",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            // ObjC shim is only needed by CocoaPods; SPM registers the Swift class directly.
            exclude: ["AddToWalletPlugin.h", "AddToWalletPlugin.m"]
        )
    ]
)
