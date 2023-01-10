// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HostingPassthrough",
    products: [
        .library(
            name: "HostingPassthrough",
            targets: ["HostingPassthrough"]
        ),
    ],
    targets: [
        .target(
            name: "HostingPassthrough",
            dependencies: []
        ),
    ]
)
