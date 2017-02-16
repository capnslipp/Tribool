// Tribool
// @author: Slipp Douglas Thompson
// @license: Public Domain per The Unlicense.  See accompanying LICENSE file or <http://unlicense.org/>.

import Foundation



/// Work-around for `Bool?` not being usable in this `@objc` model class.
@objc public enum Tribool : Int, ExpressibleByBooleanLiteral, CustomStringConvertible, CustomDebugStringConvertible
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
	public init(_ value:Tribool) {
		self = value.boolValue
	}
}
