import Foundation

class OnboardingViewModel: ObservableObject {
  @Published var tabSelection = 1
  
  let totalNumberOfPages = 3
  
  func nextPage() {
    if tabSelection < totalNumberOfPages {
      tabSelection += 1
    }
  }
  
  func previousPage() {
    if tabSelection > 1 {
      tabSelection -= 1
    }
  }
}
