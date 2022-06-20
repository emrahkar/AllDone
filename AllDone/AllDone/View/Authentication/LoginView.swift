//
//  LoginView.swift
//  AllDone
//
//  Created by Emrah Karabulut on 20.06.2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            BackgroundGradientView()
            
            VStack{
                LogoView()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
