//
//  DashboardView.swift
//  AllDone
//
//  Created by Emrah Karabulut on 27.06.2022.
//

import SwiftUI

struct DashboardView: View {
    
    let user: AppUser
    
    
    var body: some View {
        VStack{
            Text("DashboardView")
            
            Button {
                AuthViewModel.shared.signout()
            } label: {
                Text("Log out")
            }
            .padding()

        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(user: appUser01)
    }
}
