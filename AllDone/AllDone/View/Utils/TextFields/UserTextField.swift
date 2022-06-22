//
//  UserTextField.swift
//  AllDone
//
//  Created by Emrah Karabulut on 23.06.2022.
//

import SwiftUI

struct UserTextField: View {
    
    @Binding var text: String
    let placeholder: Text
    
    var body: some View {
        CustomTextField(text: $text, placeholder: placeholder, imageName: "person")
            .padding()
            .background(Color(.init(white: 1, alpha: 0.15)))
            .cornerRadius(10)
            .foregroundColor(.white)
    }
}

struct UserTextField_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            BackgroundGradientView()
            UserTextField(text: .constant(""), placeholder: Text("Username"))
        }
    }
}
