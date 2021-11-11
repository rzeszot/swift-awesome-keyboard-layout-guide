import SwiftUI

struct UIKitExampleView: View {
  var body: some View {
    Color.purple
      .ignoresSafeArea()
      .overlay(Text("UIKit"))
  }
}
