//
//  AddGroupView.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import SwiftUI

struct AddGroupView: View {
    @EnvironmentObject var contacts: ContactList
    var selectedContacts = [UUID]()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts.list) {contact in
                    var buttonStatus = false
                    HStack {
                        Text("\(contact.name)")
                        Spacer()
                        Button {
                            buttonStatus.toggle()
                            selectContact(id: contact.id)
                        } label: {
                            Image(systemName: buttonStatus ? "circle" : "circle.fill")
                        }
                    }
                }
            }
        }
        .navigationTitle("Create Group")
    }
    
    func selectContact(id: UUID) {
        if selectedContacts.contains(id) {
            if let index = selectedContacts.firstIndex(of: id) {
                selectedContacts.remove(at: index)
            }
        } else {
            selectedContacts.append(id)
        }
    }
}

struct AddGroupView_Previews: PreviewProvider {
    static var previews: some View {
        AddGroupView()
    }
}
