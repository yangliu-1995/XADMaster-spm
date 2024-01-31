// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "XADMaster-spm",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "XADMaster-spm",
            targets: ["XADMaster-spm"]),
        .library(name: "XADMaster", targets: ["XADMaster"]),
    ],
    targets: [
        .target(
            name: "XADMaster-spm",
            dependencies: [
                "XADMaster",
            ]
        ),
        .binaryTarget(name: "XADMaster", url: "https://github.com/yangliu-1995/XADMaster/releases/download/0.110.8/XADMaster.xcframework.zip", checksum: "e62bb1fe57d006e445d65ee64fea8c8b53242c2c60e5b4aa7a0bff1fb98e4dfd"),
    ]
)
