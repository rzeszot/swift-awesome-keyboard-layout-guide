import UIKit

public struct KeyboardWillChangeFrameNotification {
  public let begin: CGRect
  public let end: CGRect
  public let duration: CGFloat

  init?(_ userInfo: [AnyHashable: Any]) {
    guard let begin = userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as? CGRect,
      let end = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect,
      let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? CGFloat
    else { return nil }

    self.begin = begin
    self.end = end
    self.duration = duration
  }

  init?(_ notification: Notification) {
    guard notification.name == UIResponder.keyboardWillChangeFrameNotification else { return nil }
    self.init(notification.userInfo ?? [:])
  }
}
