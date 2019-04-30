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
	],
	swiftLanguageVersions: [
		3,
		4,
		5,
	]
)
