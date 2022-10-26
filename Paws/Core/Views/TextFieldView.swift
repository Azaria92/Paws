import SwiftUI

struct TextFieldView: View {
  var hint: String
  @Binding var text: String
  @FocusState var focusField: FocusField?
  
  var iconName: String
  var submitLabel: SubmitLabel
  var focusFieldType: FocusField
  var action: (() -> Void)?
  
  
  var body: some View {
    HStack {
      Image(systemName: iconName)
        .resizable()
        .frame(width: 24, height: 24)
        .padding(.trailing, 30)
      
      TextField(hint, text: $text)
        .focused($focusField, equals: focusFieldType)
        .keyboardType(.emailAddress)
        .submitLabel(submitLabel)
        .onSubmit(action ?? {})
      //      .onSubmit {
      //        (action ?? {})()
      //      }
    }
    .padding()
    .overlay(RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 1).foregroundColor(.secondaryText))
    .padding(.bottom, 15)
  }
}

struct TextFieldView_Previews: PreviewProvider {
  static var previews: some View {
    TextFieldView(
      hint: "Enter your email address",
      text: .constant("email.gmail.com"),
      iconName: "envelope",
      submitLabel: .next,
      focusFieldType: .email
    )
  }
}
