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
                            // Status for whether the contact is selected or not
                            buttonStatus.toggle()
                            
                        } label: {
                            Image(systemName: buttonStatus ? "circle.fill" : "circle")
                        }
                    }
                }
            }
        }
        .navigationTitle("Create Group")
    }
}

struct AddGroupView_Previews: PreviewProvider {
    static var previews: some View {
        AddGroupView()
    }
}
