//
//  PasswordSecureField.swift
//  AllDone
//
//  Created by Emrah Karabulut on 22.06.2022.
//

import SwiftUI

struct PasswordSecureField: View {
    
    @Binding var text: String
    let placeholder: Text
    
    var body: some View {
        CustomSecureField(text: $text, placeholder: Text("Password"))
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}

struct PasswordSecureField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            BackgroundGradientView()
            PasswordSecureField(text: .constant(""), placeholder: Text("Password"))
        }
    }
}
