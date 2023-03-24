// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "KociembaSolver",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .library(name: "KociembaSolver", targets: ["KociembaSolver"]),
        .executable(name: "CLI", targets: ["CLI"])
    ],
    dependencies: [],
    targets: [
        .target(name: "KociembaSolver"),
        .executableTarget(
            name: "CLI",
            dependencies: ["KociembaSolver"],
            swiftSettings: [.unsafeFlags(["-enable-experimental-cxx-interop"])]
        )
    ]
)
