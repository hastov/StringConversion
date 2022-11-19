import XCTest
@testable import StringConversion

final class StringConversionTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(
            StringConversion.can("PQQ", beConvertedInto: "PQQP"),
            true
        )
        XCTAssertEqual(
            StringConversion.can("PQQ", beConvertedInto: "QQPQPPPP"),
            true
        )
        XCTAssertEqual(
            StringConversion.can("P", beConvertedInto: "PQPQQQ"),
            false
        )
        XCTAssertEqual(
            StringConversion.can("PQQ", beConvertedInto: "PQQ"),
            true
        )
    }
}
