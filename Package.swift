// swift-tools-version: 5.9

import PackageDescription

let KociembaSolver = Package(
    name: "KociembaSolver",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "KociembaSolverCpp",
            targets: ["KociembaSolverCpp"]),
        .library(
            name: "KociembaSolver",
            targets: ["KociembaSolver"]),
        .executable(
            name: "KociembaCLI",
            targets: ["KociembaCLI"])
    ],
    targets: [
        .target(
            name: "KociembaSolverCpp"),
        .target(
            name: "KociembaSolver",
            dependencies: ["KociembaSolverCpp"],
            swiftSettings: [.interoperabilityMode(.Cxx)]),
        .executableTarget(
            name: "KociembaCLI",
            dependencies: ["KociembaSolver"],
            swiftSettings: [.interoperabilityMode(.Cxx)])
    ]
)
