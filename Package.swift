// swift-tools-version:5.2
///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///

import PackageDescription

let package = Package(
    name: "SwiftyDropbox",
    platforms: [
        .macOS(.v10_14), .iOS(.v9)
    ],
    products: [.library(name: "SwiftyDropbox", targets: ["SwiftyDropbox"])],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "4.8.2")),
    ],
    targets: [
    .target(
        name: "SwiftyDropbox",
        dependencies: ["Alamofire", "DBChunkInputStream"]),
    .target(
        name: "DBChunkInputStream",
        dependencies: []),
    ]
)
