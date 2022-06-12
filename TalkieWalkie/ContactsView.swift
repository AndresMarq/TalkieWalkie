//
//  ContactsView.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import SwiftUI

struct ContactsView: View {
    // Variable to show in list below, struct defined in Contact.swift
    @State private var contacts = [Contact]()
    
    // Tracks whether we are currently on a call or not
    @State private var isOnCall = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts) { contact in
                    HStack {
                        Text("\(contact.name)")
                        Spacer()
                        Button {
                            // To do
                            isOnCall.toggle()
                        } label: {
                            Image(systemName: "mic.circle.fill")
                                .accessibilityLabel("Talk to \(contact.name)")
                                .font(.largeTitle)
                                .foregroundColor(isOnCall ? Color.red : Color.blue)
                        }
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
        contacts.append(contact)
    }
    
    func deleteContact(at offsets: IndexSet) {
        contacts.remove(atOffsets: offsets)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
