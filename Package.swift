// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "SportsCore",
  platforms: [.macOS(.v14)],
  products: [
    .library(name: "SportsCore", targets: ["SportsCore"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Stygian-Tech/wire-core.git", revision: "a37340974f2d26d92faa70bfb048ab0681017b28"),
    .package(url: "https://github.com/apple/swift-crypto.git", from: "3.14.0"),
  ],
  targets: [
    .target(
      name: "SportsCore",
      dependencies: [.product(name: "WireCore", package: "wire-core"), .product(name: "Crypto", package: "swift-crypto")],
      swiftSettings: [
        .swiftLanguageMode(.v6),
      ]
    ),
    .testTarget(
      name: "SportsCoreTests",
      dependencies: ["SportsCore"],
      swiftSettings: [
        .swiftLanguageMode(.v6),
      ]
    ),
  ]
)
