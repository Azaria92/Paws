import SwiftUI

struct PageRouter: View {
  @EnvironmentObject var appViewModel: AppViewModel
  
  var body: some View {
    Group{
      switch appViewModel.currentScreen {
      case .loadingScreen:
        ProgressView()
          .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
        
      case .welcomeScreen:
        WelcomeScreen()
          .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
        
      case .onboardingScreen:
        OnboardingScreen()
          .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
        
      case .loginScreen:
        LoginScreen()
          .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
        
      case .registerScreen:
        RegisterScreen()
          .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
      
      case .homeScreen:
        HomeScreen()
          .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
        
      }
      
    }
    .onAppear{
      withAnimation {
        appViewModel.goToWelcomeScreen()
      }
    }
  }
  
}

struct PageBuilder_Previews: PreviewProvider {
  static var previews: some View {
    PageRouter()
      .environmentObject(AppViewModel())
  }
}
