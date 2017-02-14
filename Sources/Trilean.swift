// SlidingPuzzleCity
// @copyright: Slipp Douglas Thompson
// @copyright date: The date(s) of version control check-ins corresponding to this file and this project as a whole; or in lieu of, no earlier than July 2016.

import Foundation



/// Work-around for `Bool?` not being usable in this `@objc` model class.
@objc public enum Trilean : Int, ExpressibleByBooleanLiteral, CustomStringConvertible, CustomDebugStringConvertible
{
	case `true` = 1
	case `false` = 0
	case indeterminate = -1
	
	public init() {
		self = .indeterminate
	}
	public init(_ value:Bool) {
		self = value ? .true : .false
	}
	public init(_ value:Bool?) {
		self = (value == nil ? .indeterminate : (value! ? .true : .false))
	}
	
	public var optionalBoolValue:Bool? {
		return (self == .indeterminate ? nil : (self == .true ? true : false))
	}
	
	
	// MARK: ExpressibleByBooleanLiteral Conformance
	
	public init(booleanLiteral value:Bool) {
		self = value ? .true : .false
	}
	
	
	// MARK: BooleanType-ish Conformance (BooleanType no longer exists in Swift 3, AFAICT)
	
	public var boolValue:Bool {
		precondition(self != .indeterminate)
		return self == .true ? true : false
	}
	
	
	// MARK: CustomStringConvertible & CustomDebugStringConvertible Conformance
	
	public var description:String {
		switch self {
			case .`true`: return "true"
			case .`false`: return "false"
			case .indeterminate: return "indeterminate"
		}
	}
	public var debugDescription:String {
		return "\(type(of: self)).\(self.description)"
	}
}


extension Bool
{
	public init(_ value:Trilean) {
		self = value.boolValue
	}
}
