// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SendGrid",
    products: [
        .library(name: "SendGrid", targets: ["SendGrid"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0-beta"),
    ],
    targets: [
        .target(name: "SendGrid", dependencies: ["Vapor"]),
        .testTarget(name: "SendGridTests", dependencies: ["Vapor", "SendGrid"])
    ]
)
