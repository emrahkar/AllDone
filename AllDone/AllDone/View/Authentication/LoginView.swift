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
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
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
                        viewModel.login(withEmail: email, password: password)
                    } label: {
                        AuthenticateButtonView(text: "Sign In")
                            .padding()
                    }

                    Spacer()
                    
                    NavigationLink {
                        SignupView()
                            .navigationBarHidden(true)
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                                
                    }
                    .padding(.bottom, 16)

                    
                }
                .padding(.top, -44)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
