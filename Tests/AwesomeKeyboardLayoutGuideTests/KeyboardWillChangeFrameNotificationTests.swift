import XCTest
@testable import AwesomeKeyboardLayoutGuide

final class KeyboardWillChangeFrameNotificationTests: XCTestCase {

  func test_will_change() {
    let sut = KeyboardWillChangeFrameNotification(.keyboardWillChangeFrameNotification)

    XCTAssertNotNil(sut)
    XCTAssertEqual(sut?.begin, CGRect(x: 0, y: 508, width: 390, height: 336))
    XCTAssertEqual(sut?.end, CGRect(x: 0, y: 553, width: 390, height: 291))
  }

}

private extension Notification {
  static var keyboardWillChangeFrameNotification: Notification {
    .init(
      name: UIResponder.keyboardWillChangeFrameNotification,
      object: nil,
      userInfo: [
        UIResponder.keyboardFrameBeginUserInfoKey: CGRect(x: 0, y: 508, width: 390, height: 336),
        UIResponder.keyboardFrameEndUserInfoKey: CGRect(x: 0, y: 553, width: 390, height: 291)
      ]
    )
  }
}
