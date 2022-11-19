import XCTest
@testable import StringConversion

final class StringConversionTests: XCTestCase {
    var sut: StringConversion!
    
    override func setUp() {
        super.setUp()
        sut = StringConversion()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(
            sut.can("PQQ", beConvertedInto: "PQQP"),
            true
        )
        XCTAssertEqual(
            sut.can("PQQ", beConvertedInto: "QQPQPPPP"),
            true
        )
        XCTAssertEqual(
            sut.can("P", beConvertedInto: "PQPQQQ"),
            false
        )
        XCTAssertEqual(
            sut.can("PQQ", beConvertedInto: "PQQ"),
            true
        )
        XCTAssertEqual(
            sut.can("", beConvertedInto: "PQQ"),
            true
        )
        XCTAssertEqual(
            sut.can("QQ", beConvertedInto: ""),
            false
        )
    }
}
