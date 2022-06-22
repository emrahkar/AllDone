//
//  LoginView.swift
//  AllDone
//
//  Created by Emrah Karabulut on 20.06.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            BackgroundGradientView()
            
            VStack{
                LogoView()
                    .padding(.bottom, 25)
                
                VStack(spacing: 20){
                    EmailTextField(text: $email)
                    PasswordSecureField(text: $password, placeholder: Text("Password"))
                }
                .padding(.horizontal, 32)
                
                HStack{
                    Spacer()
                    
                    Button {
                        //Forgot Password Action
                    } label: {
                        Text("Forgot Password")
                            .foregroundColor(.white)
                            .font(.system(size: 13, weight: .semibold))
                            .padding(.top)
                            .padding(.trailing, 28)
                    }
                }
                
                Button {
                    //Sign In Action
                } label: {
                    AuthenticateButtonView(text: "Sign In")
                        .padding()
                }

                Spacer()
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
