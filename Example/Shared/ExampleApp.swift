import SwiftUI

@main
struct ExampleApp: App {
  var body: some Scene {
    WindowGroup {
      TabView {
        UIKitExampleView()
          .tabItem {
            Text("UIKit")
          }
        AwesomeExampleView()
          .tabItem {
            Text("Awesome")
          }
      }
    }
  }
}
