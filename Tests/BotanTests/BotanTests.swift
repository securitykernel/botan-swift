import XCTest
@testable import Botan

final class BotanTests: XCTestCase {
    func testVersion() throws {
        let ver = Botan.version()
        print("Found Botan version:", ver)
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }

    func testErr() throws {
        let desc = Botan.errorDescription(err: 1)
        XCTAssertEqual(desc, "Invalid verifier")
    }
}
