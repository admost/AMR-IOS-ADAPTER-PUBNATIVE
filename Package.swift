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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-PUBNATIVE/releases/download/3.9.0/AMRAdapterPubnative.xcframework.zip",
            checksum: "ea99fc8990f2be6ffe8ae98ef5edcb9f2abe6e23bca076336fbc0a6280dbf562"
        ),
        .binaryTarget(
            name: "HyBid",
            url: "https://github.com/pubnative/pubnative-hybid-ios-sdk/releases/download/3.9.0/HyBid.xcframework.zip",
            checksum: "8aa3998fe5e2170a28916e0dca368f13c17cfdcb729c6724456cb11538f2bfc8"
        )
    ]
)
