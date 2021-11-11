import XCTest
import AwesomeKeyboardLayoutGuide

final class UIViewAnimationCurveTests: XCTestCase {

  // MARK: - init(UIView.AnimationOptions)

  func test_init_curve_ease_in_out() {
    let sut = UIView.AnimationCurve(.curveEaseInOut)
    XCTAssertEqual(sut, .easeInOut)
  }

  func test_init_curve_ease_in() {
    let sut = UIView.AnimationCurve(.curveEaseIn)
    XCTAssertEqual(sut, .easeIn)
  }

  func test_init_curve_ease_out() {
    let sut = UIView.AnimationCurve(.curveEaseOut)
    XCTAssertEqual(sut, .easeOut)
  }

  func test_init_curve_linear() {
    let sut = UIView.AnimationCurve(.curveLinear)
    XCTAssertEqual(sut, .linear)
  }

  // MARK: - Custom String Convertible

  func test_description_ease_in_out() {
    let sut = UIView.AnimationCurve.easeInOut
    XCTAssertEqual(sut.description, "easeInOut")
  }

  func test_description_ease_in() {
    let sut = UIView.AnimationCurve.easeIn
    XCTAssertEqual(sut.description, "easeIn")
  }

  func test_description_ease_out() {
    let sut = UIView.AnimationCurve.easeOut
    XCTAssertEqual(sut.description, "easeOut")
  }

  func test_description_linear() {
    let sut = UIView.AnimationCurve.linear
    XCTAssertEqual(sut.description, "linear")
  }

}
