// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Botan",
    products: [
        .library(
            name: "Botan",
            targets: ["Botan"]),
        .library(
            name: "CBotan",
            targets: ["CBotan"])
    ],
    targets: [
        .target(
            name: "Botan",
            dependencies: ["CBotan"]),
        .systemLibrary(
            name: "CBotan",
            pkgConfig: "botan-3",
            providers: [
                .brew(["botan"])
            ]),
        .testTarget(
            name: "Botan-Tests",
            dependencies: ["Botan"]),
    ]
)
