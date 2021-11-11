import UIKit

class ViewController: UIViewController {

  // MARK: -

  lazy var boxView: UIView = {
    let box = UIView()
    box.backgroundColor = .systemRed
    view.addSubview(box)
    box.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([

      box.heightAnchor.constraint(equalToConstant: 50),
      box.leftAnchor.constraint(equalTo: view.leftAnchor),
      box.rightAnchor.constraint(equalTo: view.rightAnchor)
    ])

    return box
  }()

  lazy var xxConstraint: NSLayoutConstraint = {
    boxView.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor)
  }()

  // MARK: -

  override func loadView() {
    view = UIView()
    view.backgroundColor = .systemBackground

    _ = textField
    _ = tapRecognizer
    _ = xxxSwitch
  }

  // MARK: -

  @objc private func switchAction() {
    xxConstraint.isActive = xxxSwitch.isOn
  }

  private lazy var xxxSwitch: UISwitch = {
    let control = UISwitch()
    control.addTarget(self, action: #selector(switchAction), for: .valueChanged)

    view.addSubview(control)
    control.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      control.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
      control.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
    ])

    return control
  }()

  // MARK: -

  @objc private func backgroundAction() {
    textField.resignFirstResponder()
  }

  private lazy var tapRecognizer: UITapGestureRecognizer = {
    let recognizer = UITapGestureRecognizer()
    recognizer.addTarget(self, action: #selector(backgroundAction))
    view.addGestureRecognizer(recognizer)
    return recognizer
  }()

  // MARK: -

  private lazy var textField: UITextField = {
    let field = UITextField()
    field.borderStyle = .roundedRect

    view.addSubview(field)
    field.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      field.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      field.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      field.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
      field.heightAnchor.constraint(equalToConstant: 50)
    ])

    return field
  }()

}
