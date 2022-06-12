//
//  ContactsView.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import SwiftUI

struct ContactsView: View {
    // Environment Object from ContentView
    @EnvironmentObject var contacts: ContactList
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts.list) { contact in
                    HStack {
                        Text("\(contact.name)")
                        Spacer()
                        MicrophoneButtonView(name: contact.name)
                    }
                }
                .onDelete(perform: deleteContact)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        addContact()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .navigationTitle("Talkie Walkie")
        }
    }
    
    func addContact() {
        let name = ["Jon", "Ned", "Rob", "Arya", "Rickon", "Bran", "Sansa", "Caitlyn", "Ben"]
        let contactName = name.randomElement() ?? "Ghost"
        let id = UUID()
        let contact = Contact(name: contactName, id: id)
        contacts.list.append(contact)
    }
    
    func deleteContact(at offsets: IndexSet) {
        contacts.list.remove(atOffsets: offsets)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
