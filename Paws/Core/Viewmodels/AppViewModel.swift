import SwiftUI

enum Screen {
  case loadingScreen
  case welcomeScreen
  case onboardingScreen
  case loginScreen
  case registerScreen
  case homeScreen
}

class AppViewModel: ObservableObject {
  @Published private(set) var currentScreen: Screen = .loadingScreen
  
  func goToWelcomeScreen() {
    currentScreen = .welcomeScreen
  }
  
  func goToOnboarding() {
    currentScreen = .onboardingScreen
  }
  
  func goToLoginScreen() {
    currentScreen = .loginScreen
  }
  
  func goToRegisterScreen() {
    currentScreen = .registerScreen
  }
  
  func goToHomeScreen() {
    currentScreen = .homeScreen
  }


}
