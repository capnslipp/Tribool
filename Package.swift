// swift-tools-version:5.0
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
		.version("3"),
		.version("4"),
		.version("4.2"),
		.version("5"),
	]
)
