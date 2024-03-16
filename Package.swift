// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "swift-eosio-key-encryption-legacy",
    products: [
        .library(name: "EOSIOKeyEncryptionLegacy", targets: ["EOSIOKeyEncryptionLegacy"]),
    ],
    dependencies: [
        .package(url: "https://github.com/greymass/swift-eosio.git", .branch("master")),
        .package(url: "https://github.com/greymass/swift-scrypt-legacy.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "EOSIOKeyEncryptionLegacy",
            dependencies: [
                .product(name: "EOSIO", package: "swift-eosio"),
                .product(name: "ScryptLegacy", package: "swift-scrypt-legacy"),
            ]
        ),
        .testTarget(
            name: "EOSIOKeyEncryptionTests",
            dependencies: ["EOSIOKeyEncryptionLegacy"]
        ),
    ]
)
