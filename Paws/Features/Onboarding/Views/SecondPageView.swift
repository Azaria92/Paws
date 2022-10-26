import SwiftUI

struct SecondPageView: View {
  var body: some View {
    VStack(spacing: 0) {
      DogView(width: 152, height: 200, image: "dog-2")
        .padding(.bottom, 100)
      
      PrimaryTextView(text: "Share", size: 24)
        .padding(.bottom, 20)
      
      SecondaryTextView(text: "You can recommend and share with your friend the canine profile that you like most")
        .padding(.horizontal, 30)
        .padding(.bottom, 40)
    }
  }
}

struct SecondPageView_Previews: PreviewProvider {
  static var previews: some View {
    SecondPageView()
  }
}
