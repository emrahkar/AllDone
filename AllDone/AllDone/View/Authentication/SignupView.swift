//
//  SignupView.swift
//  AllDone
//
//  Created by Emrah Karabulut on 20.06.2022.
//

import SwiftUI

struct SignupView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ZStack{
            BackgroundGradientView()
            
            VStack{
                LogoView()
                    .padding(.bottom, 25)
                
                VStack(spacing: 20){
                    UserTextField(text: $firstName, placeholder: Text("First Name"))
                    UserTextField(text: $lastName, placeholder: Text("Last Name"))
                    EmailTextField(text: $email)
                    PasswordSecureField(text: $password, placeholder: Text("Password"))
                    PasswordSecureField(text: $password, placeholder: Text("Confirm Password"))
    
                }
                .padding(.horizontal, 32)
                
                Button {
                    //sign up action
                } label: {
                    AuthenticateButtonView(text: "Sign Up")
                        .padding()
                }
                Spacer()
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Text("Already have an account?")
                        .font(.system(size: 14))
                    Text("Sign In")
                        .font(.system(size: 14, weight: .semibold))
                }
                .foregroundColor(.white)

            }
            .padding(16)
            
        }
        
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
