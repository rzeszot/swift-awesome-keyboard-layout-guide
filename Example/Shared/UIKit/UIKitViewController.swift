import UIKit
import SwiftUI

final class UIKitViewController: ViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemYellow

    let constraint = boxView.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor)
    constraint.priority = .defaultHigh
    constraint.isActive = true
  }
}

extension UIKitViewController: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> UIKitViewController {
    UIKitViewController()
  }

  func updateUIViewController(_ vc: UIKitViewController, context: Context) {
    // nop
  }
}
