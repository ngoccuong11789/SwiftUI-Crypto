//
//  SwiftfulCryptoTests.swift
//  SwiftfulCryptoTests
//
//  Created by Cuong Nguyen Ngoc on 31/01/2025.
//

import XCTest
@testable import SwiftfulCrypto

final class SwiftfulCryptoTests: XCTestCase {

    var viewModel: HomeViewModel!
    override func setUpWithError() throws {
        super.setUp()
        viewModel = HomeViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModel = nil  // Cleanup after each test
        super.tearDown()
    }
    
    func testFetchCoins() async {
        // Given
            let quantity = 2.0
            let pricePerUnit = 50000.0
            let expectedTotal = 100000.0

            // When
            let calculatedTotal = quantity * pricePerUnit

            // Then
            XCTAssertEqual(calculatedTotal, expectedTotal, "Total price calculation is incorrect")
        }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
