import SwiftUI

struct LoginScreen: View {
  @EnvironmentObject var appViewModel: AppViewModel
  
  @State var emailAddress: String = ""
  @State var password: String = ""
  
  @FocusState var focusField: FocusField?
  
  var body: some View {
    VStack {
      LogoView(size: 50)
        .padding(.top, 50)
      PrimaryTextView(text: "Paws", size: 24)
      
      VStack(alignment: .leading){
        PrimaryTextView(text: "Login", size: 18)
        SecondaryTextView(text: "Enter your email address and password")
          .padding(.bottom, 30)
        TextFieldView(hint: "Email", text: $emailAddress, focusField: _focusField, iconName: "envelope", submitLabel: .next, focusFieldType: .email) {
          focusField = .password
        }
        
        SecureFieldView(
          hint: "Password", text: $password, focusField: _focusField, submitLabel: .done, focusFieldType: .password)
        
        PrimaryButtonView(text: "Login") {
          if emailAddress.isEmpty {
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
      
      BottomLinkView(question: "Don't have an Account?", buttonText: "Sign Up") {
        withAnimation {
          appViewModel.goToRegisterScreen()
        }
      }
      .padding(.top, 20)
    }
    .frame(
      minHeight: 0,
      maxHeight: .infinity,
      alignment: .top
    )
  }
}

struct LoginScreen_Previews: PreviewProvider {
  static var previews: some View {
    LoginScreen()
  }
}
