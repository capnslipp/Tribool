//
//  VucktCTests.m
//  Vuckt
//
//  Created by Cap'n Slipp on 5/13/20.
//

@import XCTest;
@import Tribool;
#import "TriboolTests-Swift.h"



@interface TriboolObjCTests : XCTestCase
@end


@implementation TriboolObjCTests

- (void)setUp {
}

- (void)tearDown {
}

- (void)testTriboolObjC
{
	XCTAssertEqual(TriboolTests.indeterminateTribool, TriboolIndeterminate);
	XCTAssertEqual(TriboolTests.trueTribool, TriboolTrue);
	XCTAssertEqual(TriboolTests.falseTribool, TriboolFalse);
}

@end
