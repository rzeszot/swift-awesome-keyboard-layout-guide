import SwiftUI

struct AwesomeExampleView: View {
  var body: some View {
    Color.yellow
      .ignoresSafeArea()
      .overlay(Text("Awesome"))
  }
}
