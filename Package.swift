// swift-tools-version:4.0
import PackageDescription

let package = Package(
	name: "Tribool",
	products: [
		.library(name: "Tribool", targets: [ "Tribool" ]),
	],
	dependencies: [],
	targets: [
		.target(name: "Tribool", dependencies: [], path: "Sources/"),
		.testTarget(name: "TriboolTests", dependencies: ["Tribool"], path: "Tests/", sources: ["TriboolTests.swift"]),
	],
	swiftLanguageVersions: [
		3,
		4,
		5,
	]
)
