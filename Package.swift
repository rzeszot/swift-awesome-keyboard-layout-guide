// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "AwesomeKeyboardLayoutGuide",
  products: [
    .library(name: "AwesomeKeyboardLayoutGuide", targets: ["AwesomeKeyboardLayoutGuide"])
  ],
  targets: [
    .target(name: "AwesomeKeyboardLayoutGuide"),
    .testTarget(name: "AwesomeKeyboardLayoutGuideTests", dependencies: ["AwesomeKeyboardLayoutGuide"])
  ]
)
