// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "swift-eosio-key-encryption-legacy",
    products: [
        .library(name: "EOSIOKeyEncryption", targets: ["EOSIOKeyEncryption"]),
    ],
    dependencies: [
        .package(url: "https://github.com/greymass/swift-eosio.git", .branch("master")),
        .package(url: "https://github.com/greymass/swift-scrypt-legacy.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "EOSIOKeyEncryption",
            dependencies: [
                .product(name: "EOSIO", package: "swift-eosio"),
                .product(name: "Scrypt", package: "swift-scrypt-legacy"),
            ]
        ),
        .testTarget(
            name: "EOSIOKeyEncryptionTests",
            dependencies: ["EOSIOKeyEncryption"]
        ),
    ]
)
