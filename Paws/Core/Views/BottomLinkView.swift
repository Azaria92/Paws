import SwiftUI

struct BottomLinkView: View {
  var question: String
  var buttonText: String
  var action: () -> Void
  var body: some View {
    HStack {
      SecondaryTextView(text: question)
      Button (action: action){
        Text(buttonText)
          .foregroundColor(.pawsBlue)
          .font(.system(size: 14, weight: .bold, design: .serif))
      }
    }
  }
}

struct BottomLinkView_Previews: PreviewProvider {
  static var previews: some View {
    BottomLinkView(question: "Don't have an Account?",
                   buttonText: "Sign Up", action: {})
  }
}
