import SwiftUI

struct FirstPageView: View {
  var body: some View {
    VStack(spacing: 0) {
      DogView(width: 152, height: 200, image: "dog-1")
        .padding(.bottom, 100)
      
      PrimaryTextView(text: "Get Advice", size: 24)
        .padding(.bottom, 20)
      
      SecondaryTextView(text: "Get advice on how to give the best care to your pet and how to keep it in the best condition")
        .padding(.horizontal, 30)
        .padding(.bottom, 40)
    }
  }
}

struct FirstPageView_Previews: PreviewProvider {
  static var previews: some View {
    FirstPageView()
  }
}
