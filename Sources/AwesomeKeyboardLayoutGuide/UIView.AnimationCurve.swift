import UIKit

extension UIView.AnimationCurve {
  public init?(_ animationOptions: UIView.AnimationOptions) {
    switch animationOptions {
    case .curveEaseInOut:
      self = .easeInOut
    case .curveEaseIn:
      self = .easeIn
    case .curveEaseOut:
      self = .easeOut
    case .curveLinear:
      self = .linear
    default:
      return nil
    }
  }
}

extension UIView.AnimationCurve: CustomStringConvertible {
  public var description: String {
    switch self {
    case .easeIn:
      return "easeIn"
    case .easeInOut:
      return "easeInOut"
    case .easeOut:
      return "easeOut"
    case .linear:
      return "linear"
    @unknown default:
      fatalError()
    }
  }
}
