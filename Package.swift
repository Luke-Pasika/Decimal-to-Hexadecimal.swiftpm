// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Decimal to Hexadecimal",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Decimal to Hexadecimal",
            targets: ["AppModule"],
            bundleIdentifier: "com.phs.Decimal-to-Hexadecimal",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .movieReel),
            accentColor: .presetColor(.mint),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)