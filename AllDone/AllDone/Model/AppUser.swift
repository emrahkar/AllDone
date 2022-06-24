//
//  AppUser.swift
//  AllDone
//
//  Created by Emrah Karabulut on 24.06.2022.
//

import FirebaseFirestoreSwift
import Foundation

struct AppUser: Identifiable, Decodable {
    
    @DocumentID var id: String?
    let uid: String
    let firstName: String
    let lastName: String
    let email: String
    
//    var isCurrentUser: Bool {
//        return AuthViewModel.shared.userSession?.uid == id
//    }
}
