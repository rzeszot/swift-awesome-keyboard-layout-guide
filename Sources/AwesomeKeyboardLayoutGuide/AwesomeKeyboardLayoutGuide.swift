import Combine
import UIKit

public class AwesomeKeyboardLayoutGuide: UILayoutGuide {

  // MARK: -

  public override var identifier: String {
    set {}
    get {
      "AwesomeKeyboardLayoutGuide"
    }
  }

  public override var owningView: UIView? {
    didSet {
      if let owningView = owningView {
        let height = heightAnchor.constraint(equalToConstant: 0)
        height.priority = .defaultLow

        NSLayoutConstraint.activate([
          leftAnchor.constraint(equalTo: owningView.leftAnchor),
          rightAnchor.constraint(equalTo: owningView.rightAnchor),
          bottomAnchor.constraint(equalTo: owningView.bottomAnchor),
          height
        ])
      } else {

      }
    }
  }

  // MARK: -

  public override init() {
    super.init()
    subscribeNotifications()
  }

  public required init?(coder: NSCoder) {
    super.init(coder: coder)
    subscribeNotifications()
  }

  private func subscribeNotifications(from notificationCenter: NotificationCenter = .default) {
    notificationCenter.addObserver(self, selector: #selector(keyboardWillChangeFrame(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
  }

  // MARK: -

  @objc private func keyboardWillChangeFrame(_ not: Notification) {
    guard let notification = KeyboardWillChangeFrameNotification(not) else { return }
    guard let owningView = owningView else { return }
    guard let window = owningView.window else { return }
    guard let heightConstraint = heightConstraint else { return }

    let keyboardHeight = window.frame.height - notification.end.minY
    heightConstraint.constant = keyboardHeight

    UIView.animate(withDuration: notification.duration, delay: 0, options: .curveEaseInOut) {
      owningView.layoutIfNeeded()
    }
  }

  // MARK: -

  private var heightConstraint: NSLayoutConstraint? {
    owningView?.constraints.first { $0.firstAnchor == heightAnchor }
  }



}

extension UIView {

  public var awesomeKeyboardLayoutGuide: UILayoutGuide {
    if let guide = layoutGuides.first(where: { $0 is AwesomeKeyboardLayoutGuide }) {
      return guide
    } else {
      let guide = AwesomeKeyboardLayoutGuide()
      addLayoutGuide(guide)
      return guide
    }
  }

}
