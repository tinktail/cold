// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "Master",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "Master",
            targets: ["Master"]),
    ],
    dependencies: [
        .package(url: "https://github.com/archivable/package.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Master",
            dependencies: [
                .product(name: "Archivable", package: "package")],
            path: "Sources"),
        .testTarget(
            name: "Tests",
            dependencies: ["Master"],
            path: "Tests"),
    ]
)
