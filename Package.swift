// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ShareExtension",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "ShareExtension",
            targets: ["ShareExtension"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "ShareExtension",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ShareExtension"),
        .testTarget(
            name: "ShareExtensionTests",
            dependencies: ["ShareExtension"],
            path: "ios/Tests/ShareExtensionTests")
    ]
)