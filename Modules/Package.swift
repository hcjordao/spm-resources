// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Modules",
            targets: [
                "Resources",
                "Primary"
            ]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Primary",
            dependencies: [
                "Resources"
            ]
        ),
        .testTarget(
            name: "PrimaryTests",
            dependencies: [
                "Primary"
            ]
        ),

        .target(
            name: "Resources",
            dependencies: [
            ]
        ),
        .testTarget(
            name: "ResourcesTests",
            dependencies: [
                "Resources"
            ]
        ),
    ]
)
