import SwiftUI

struct PrimaryButtonView: View {
  var text: String
  var action: () -> Void
  
  var body: some View {
    Button(action: action) {
      Text(text)
        .font(.system(size: 16, weight: .bold, design: .serif))
    }
    .frame(minWidth: 0, maxWidth: .infinity)
    .foregroundColor(.white)
    .padding(.vertical, 13)
    .background(Color.pawsOrange)
    .cornerRadius(15)
  }
}

struct PrimaryButtonView_Previews: PreviewProvider {
  static var previews: some View {
    PrimaryButtonView(text: "Login") {
      print("Clicked")
    }
  }
}
