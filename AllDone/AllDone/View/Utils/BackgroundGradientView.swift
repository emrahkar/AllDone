//
//  BackgroundGradientView.swift
//  AllDone
//
//  Created by Emrah Karabulut on 20.06.2022.
//

import SwiftUI

struct BackgroundGradientView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

struct BackgroundGradientView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradientView()
    }
}
