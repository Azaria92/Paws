import SwiftUI

struct WelcomeScreen: View {
  @EnvironmentObject var appViewModel: AppViewModel
  
  var body: some View {
    VStack{
      Spacer()
      LogoView(size: 90)
        .padding(.bottom, 40)
      
      
      Text("Paws")
        .font(.system(size: 26, design: .serif))
        .fontWeight(.bold)
        .padding(.bottom, 10)
      
      Text("Are you ready to get a\nnew lovely friend?")
        .multilineTextAlignment(.center)
      
      Spacer()
      
      Button {
        withAnimation{
          appViewModel.goToOnboarding()
        }
        
      } label: {
        Text("Get Started")
        
      }
      .foregroundColor(.white)
      .padding(.horizontal, 33)
      .padding(.vertical, 13)
      .background(Color.pawsOrange)
      .cornerRadius(15)
      .padding(.bottom, 60)
    }
    
  }
}

struct WelcomeScreen_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeScreen()
      .environmentObject(AppViewModel())
  }
}
