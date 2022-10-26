
import SwiftUI

struct SecondaryTextView: View {
  let text: String
  var body: some View {
    Text(text)
      .foregroundColor(.secondaryText)
      .font(.system(size: 14, weight: .medium, design: .serif))
      .multilineTextAlignment(.center)
  }
}

struct SecondaryTextView_Previews: PreviewProvider {
  static var previews: some View {
    SecondaryTextView(text: "Get advice on how to give the best care to your pet and how to keep it in the best condition")
  }
}
