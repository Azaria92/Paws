import SwiftUI

struct ThirdPageView: View {
  @EnvironmentObject var appViewModel: AppViewModel
  
  var body: some View {
    VStack {
      DogView(width: 152, height: 200, image: "dog-3")
        .padding(.bottom, 100)
      
      PrimaryTextView(text: "Find and Adopt it", size: 24)
        .padding(.bottom, 20)
      
      SecondaryTextView(text: "You can provide a comfortable home and food for those pets who need it")
        .padding(.horizontal, 30)
        .padding(.bottom, 40)
    }
  }
}

struct ThirdPageView_Previews: PreviewProvider {
  static var previews: some View {
    ThirdPageView()
  }
}
