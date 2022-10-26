import SwiftUI

struct PrimaryTextView: View {
  let text: String
  let size: CGFloat
    var body: some View {
        Text(text)
        .foregroundColor(.primaryText)
        .font(.system(size: size, design: .serif))
        .fontWeight(.bold)
    }
}

struct PrimaryTextView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryTextView(text: "Get Advice", size: 24)
    }
}
