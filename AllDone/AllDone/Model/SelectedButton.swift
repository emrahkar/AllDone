//
//  SelectedButton.swift
//  AllDone
//
//  Created by Emrah Karabulut on 24.06.2022.
//

import Foundation

enum SelectedButton: String {
    
    case all = "All"
    case groceries = "Groceries"
    case work = "Work"
    case school = "School"
    case home = "Home"
    case personal = "Personal"
    case extra = "Extra"
    
    func getValue() -> String {
        return self.rawValue
    }
    
}
