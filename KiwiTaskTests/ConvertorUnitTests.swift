//
//  ConvertorUnitTests.swift
//  KiwiTaskTests
//
//  Created by Ali Asadi on 4/28/1401 AP.
//

import XCTest
@testable import KiwiTask

class ConvertorUnitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let convertor = Convertor()
        XCTAssertNotNil(convertor.secondsTODate(dateInt: 1234556))
        XCTAssertNotNil(convertor.convertDateFormat(oldDate:Date()))
    }

}
