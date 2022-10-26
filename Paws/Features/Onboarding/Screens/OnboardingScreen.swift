import SwiftUI

struct OnboardingScreen: View {
  @ObservedObject var onboardingViewModel  = OnboardingViewModel()
  @EnvironmentObject var appViewModel: AppViewModel
  
  var body: some View {
    VStack {
      TabView(selection: $onboardingViewModel.tabSelection) {
        FirstPageView()
          .tag(1)
        SecondPageView()
          .tag(2)
        ThirdPageView()
          .tag(3)
      }
      .tabViewStyle(.page)
      .indexViewStyle(.page(backgroundDisplayMode: .always))
      .padding(.bottom, 45)

      
      HStack {
        backButton()
        nextButton()
      }
      .padding(.horizontal, 30)
    }
    .onAppear{
      UIPageControl.appearance().currentPageIndicatorTintColor = .orange
      UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
  }
  
  @ViewBuilder
  func backButton() -> some View {
    Button {
      withAnimation{
        onboardingViewModel.previousPage()
      }
    } label: {
      Text("Back")
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .foregroundColor(.primaryText)
    .padding(.vertical, 13)
    .cornerRadius(15)
  }
  
  @ViewBuilder
  func nextButton() -> some View {
    Button {
      withAnimation{
        if onboardingViewModel.tabSelection < onboardingViewModel.totalNumberOfPages {
          onboardingViewModel.nextPage()
          
        } else {
          appViewModel.goToLoginScreen()
        }
      }
    } label: {
      Text("Next")
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .foregroundColor(.white)
    .padding(.vertical, 13)
    .background(Color.pawsOrange)
    .cornerRadius(15)
  }
}

struct OboardingScreen_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingScreen(onboardingViewModel: OnboardingViewModel())
      .environmentObject(AppViewModel())
  }
}
