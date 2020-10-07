// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YouTubePlayer",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "YouTubePlayer",
            targets: ["YouTubePlayer"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "YouTubePlayer",
            dependencies: [],
            path: "",
            exclude: [
                "youtube-ios-player-helper.podspec",
                "Rakefile",
                "LICENSE",
                "CHANGELOG.md",
                "CONTRIBUTING.md",
                "Project",
                "README.md",
                "youtube-ios-player-helper/Info.plist",
                "youtube-ios-player-helper/YouTubeiOSPlayerHelper.h",
            ],
            sources: ["Classes"],
            resources: [
                .process("youtube-ios-player-helper/Assets.bundle"),
            ],
            publicHeadersPath: "Classes"
        ),
    ]
)
