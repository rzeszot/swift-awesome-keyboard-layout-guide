import UIKit
import SwiftUI
import AwesomeKeyboardLayoutGuide

final class AwesomeViewController: ViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemMint

    let constraint = boxView.bottomAnchor.constraint(equalTo: view.awesomeKeyboardLayoutGuide.topAnchor)
    constraint.priority = .defaultHigh
    constraint.isActive = true
  }
}

extension AwesomeViewController: UIViewControllerRepresentable {
  func makeUIViewController(context: Context) -> AwesomeViewController {
    AwesomeViewController()
  }

  func updateUIViewController(_ vc: AwesomeViewController, context: Context) {
    // nop
  }
}
