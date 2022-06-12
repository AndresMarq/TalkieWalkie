//
//  Contact.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import Foundation
// Struct Contact used for ContactsView & GroupsView. Not persistence yet, not sure if we'll have to store contacts info in backend

struct Contact: Identifiable {
    var name: String
    var id: UUID
}
