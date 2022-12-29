import XCTest
@testable import Tribool



@objc public final class TriboolTests : XCTestCase
{
	public static let indeterminateTribool = Tribool.indeterminate
	public static let trueTribool = Tribool.true
	public static let falseTribool = Tribool.false
	
	
	func testTribool() throws
	{
		var tribool = Tribool()
		XCTAssertEqual(tribool, Tribool.indeterminate)
		XCTAssertEqual(tribool.optionalBoolValue, nil)
		XCTAssertEqual(tribool.description, "indeterminate")
		
		tribool = .true
		XCTAssertEqual(tribool, Tribool.true)
		XCTAssertEqual(tribool, true)
		XCTAssertEqual(tribool.boolValue, true)
		XCTAssertEqual(tribool.optionalBoolValue, true)
		XCTAssertEqual(tribool.description, "true")
		
		tribool = .false
		XCTAssertEqual(tribool, Tribool.false)
		XCTAssertEqual(tribool, false)
		XCTAssertEqual(tribool.boolValue, false)
		XCTAssertEqual(tribool.optionalBoolValue, false)
		XCTAssertEqual(tribool.description, "false")
		
		tribool = .indeterminate
		XCTAssertEqual(tribool, Tribool.indeterminate)
		XCTAssertEqual(tribool.optionalBoolValue, nil)
		XCTAssertEqual(tribool.description, "indeterminate")
	}
}
