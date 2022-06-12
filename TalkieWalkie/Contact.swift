//
//  Contact.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import Foundation
// Class Contact used for ContactsView & GroupsView. Not persistence yet, not sure if we'll have to store contacts info in backend

class ContactList: ObservableObject {
    @Published var list: [Contact]
    
    init(list: [Contact]) {
        self.list = list
    }
}

struct Contact: Identifiable {
    var name: String
    var id: UUID
}
