import SwiftUI

struct SecureFieldView: View {
  var hint: String
  @Binding var text: String
  @FocusState var focusField: FocusField?
  
  var submitLabel: SubmitLabel
  var focusFieldType: FocusField
  var action: (() -> Void)?
  
  
  var body: some View {
    HStack {
      Image(systemName: "lock")
        .resizable()
        .frame(width: 24, height: 24)
        .padding(.trailing, 30)
      
      SecureField(hint, text: $text)
        .focused($focusField, equals: focusFieldType)
        .submitLabel(submitLabel)
        .onSubmit(action ?? {})
    }
    .padding()
    .overlay(RoundedRectangle(cornerRadius: 12).stroke(lineWidth: 1).foregroundColor(.secondaryText))
    .padding(.bottom, 15)
  }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
      SecureFieldView(
        hint: "Password",
        text: .constant("zola1234"),
        submitLabel: .done,
        focusFieldType: .password
      )
    }
}
