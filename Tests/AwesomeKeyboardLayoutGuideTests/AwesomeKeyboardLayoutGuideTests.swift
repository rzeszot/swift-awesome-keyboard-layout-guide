import XCTest
import AwesomeKeyboardLayoutGuide

final class AwesomeKeyboardLayoutGuideTests: XCTestCase {

  func test_identifier() {
    let sut = AwesomeKeyboardLayoutGuide()
    XCTAssertEqual(sut.identifier, "AwesomeKeyboardLayoutGuide")
  }

}
