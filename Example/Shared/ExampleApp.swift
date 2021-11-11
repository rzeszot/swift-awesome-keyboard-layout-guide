import SwiftUI

@main
struct ExampleApp: App {
  var body: some Scene {
    WindowGroup {
      TabView {
        AwesomeExampleView()
          .tabItem {
            Text("Awesome")
          }
        UIKitExampleView()
          .tabItem {
            Text("UIKit")
          }
      }
    }
  }
}
