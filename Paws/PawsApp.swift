import SwiftUI

@main
struct PawsApp: App {
  @StateObject private var appViewModel = AppViewModel()
  
  var body: some Scene {
    WindowGroup {
      PageRouter()
        .environmentObject(appViewModel)
    }
  }
}
