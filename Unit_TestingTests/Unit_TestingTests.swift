//
//  Unit_TestingTests.swift
//  Unit_TestingTests
//
//  Created by Mike Panitz on 6/8/23.
//

import XCTest
@testable import Unit_Testing

final class Unit_TestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.

        XCTAssertTrue(IsPrime(3)) // test passes if IsPrime returns true (as it should!)
        XCTAssert(IsPrime(5))  // Also passes if IsPrime returns true
        
        // There are a lot of other assertions available:
        // https://developer.apple.com/documentation/xctest/boolean_assertions
        XCTAssertNotNil(Factorial(3))
        XCTAssertNotNil(Factorial(4))
        XCTAssertNotNil(Factorial(5))
        XCTAssertEqual(Factorial(3), 6)
        XCTAssertEqual(Factorial(4), 24)
        XCTAssertEqual(Factorial(5), 120)
        XCTAssertNil(Factorial(-3))
        XCTAssertNil(Factorial(-4))
        XCTAssertNil(Factorial(-5))
        XCTAssertEqual(Factorial(-3), nil)
        XCTAssertEqual(Factorial(-4), nil)
        XCTAssertEqual(Factorial(-5), nil)
        XCTAssertNil(Factorial(-13))
        XCTAssertNotNil(Factorial(4))
        XCTAssertEqual(Factorial(3), 3 * 2 * 1) // probably more realistic to call a method a second time
    }
    
    func test_isPrime_negative() throws {
        XCTAssertFalse(IsPrime(-1), "-1 should NOT be prime, but it is")
        XCTAssertFalse(IsPrime(-2), "-2 should NOT be prime, but it is")
        XCTAssertFalse(IsPrime(-3), "-3 should NOT be prime, but it is")
        
        for i in -20 ... -1 {
            XCTAssertFalse(IsPrime(i), "\(i) should NOT be prime, but it is")
        }
        
        XCTAssertFalse(IsPrime(-3), "BAD TEST: checking that -3 IS prime, even though it should NOT be prime")
    }
    
    func test_isPrime_positive() throws {
        XCTAssertTrue(IsPrime(1), "1 should BE prime, but it ISN't")
        XCTAssertTrue(IsPrime(2), "2 should BE prime, but it ISN't")
        XCTAssertTrue(IsPrime(3), "3 should BE prime, but it ISN't")
        
        let validPrimes = [1, 2, 3, 5, 7, 11, 13, 17]
        for i in validPrimes {
            XCTAssertTrue(IsPrime(i), "\(i) should BE prime, but it ISN't")
        }
        
        let nonPrimes = [4, 6, 8, 10, 12, 14, 16, 18]
        for i in nonPrimes {
            XCTAssertFalse(IsPrime(i), "\(i) should NOT be prime, but it is")
        }
    }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testFactorial() throws{
        XCTAssertNotNil(Factorial(3))
        XCTAssertNotNil(Factorial(4))
        XCTAssertNotNil(Factorial(5))
        XCTAssertEqual(Factorial(3), 6)
        XCTAssertEqual(Factorial(4), 24)
        XCTAssertEqual(Factorial(5), 120)
        XCTAssertNil(Factorial(-3))
        XCTAssertNil(Factorial(-4))
        XCTAssertNil(Factorial(-5))
        XCTAssertEqual(Factorial(-3), nil)
        XCTAssertEqual(Factorial(-4), nil)
        XCTAssertEqual(Factorial(-5), nil)
    }

}
