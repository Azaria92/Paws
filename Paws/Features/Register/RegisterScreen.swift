import SwiftUI

struct RegisterScreen: View {
  @EnvironmentObject var appViewModel: AppViewModel
  
  @State var fullName = ""
  @State var emailAddress: String = ""
  @State var password: String = ""
  
  @FocusState var focusField: FocusField?
  
  var body: some View {
    VStack {
      LogoView(size: 50)
        .padding(.top, 50)
      PrimaryTextView(text: "Paws", size: 24)
      
      VStack(alignment: .leading){
        PrimaryTextView(text: "Sign Up", size: 18)
        SecondaryTextView(text: "Enter your credentials to continue")
          .padding(.bottom, 30)
        
        TextFieldView(hint: "Name", text: $fullName, focusField: _focusField, iconName: "person", submitLabel: .next, focusFieldType: .name) {
          focusField = .email
        }
        TextFieldView(hint: "Email", text: $emailAddress, focusField: _focusField, iconName: "envelope", submitLabel: .next, focusFieldType: .email) {
          focusField = .password
        }
        
        SecureFieldView(
          hint: "Password", text: $password, focusField: _focusField, submitLabel: .done, focusFieldType: .password)
        
        PrimaryButtonView(text: "Sign Up") {
          if fullName.isEmpty {
            focusField = .name
          } else if emailAddress.isEmpty {
            focusField = .email
          } else if password.isEmpty {
            focusField =  .password
          } else {
            withAnimation{
              appViewModel.goToHomeScreen()
            }
          }
        }
      }
      .padding(.top, 50)
      .padding(.horizontal, 30)
      
      BottomLinkView(question: "Already have an Account?", buttonText: "Login") {
        withAnimation {
          appViewModel.goToLoginScreen()
        }
      }
      .padding(.top, 20)
    }
    .frame(
      minHeight: 0,
      maxHeight: .infinity,
      alignment: .top
    )
  }}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
