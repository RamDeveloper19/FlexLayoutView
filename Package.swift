// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlexLayoutView",
    platforms: [
        .iOS(.v13), // Specify the minimum platform version
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FlexLayoutView",
            targets: ["FlexLayoutView"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FlexLayoutView",
            dependencies: [],
            path: "Sources/FlexLayoutView"),
    ]
)
