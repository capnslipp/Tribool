// swift-tools-version:4.2
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
		.version("3"),
		.version("4"),
		.version("4.2"),
		.version("5"),
	]
)
