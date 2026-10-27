// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterPubnative",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AMRAdapterPubnative",
            targets: ["AMRAdapterPubnative"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.85")
    ],
    targets: [
        .target(
            name: "AMRAdapterPubnative",
            dependencies: [
                "AMRAdapterPubnativeLib",
                "HyBid",
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterPubnative",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterPubnativeLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-PUBNATIVE/releases/download/3.9.3/AMRAdapterPubnative.xcframework.zip",
            checksum: "728d3d9ba154be5578f946c4a07000f13d3bb95d5e003fce5652e306fe966924"
        ),
        .binaryTarget(
            name: "HyBid",
            url: "https://github.com/pubnative/pubnative-hybid-ios-sdk/releases/download/3.9.3/HyBid.xcframework.zip",
            checksum: "8fd585aa45e9c1b9ff80d27f679a496d81a10652657558e4ae81a0548936b42d"
        )
    ]
)
