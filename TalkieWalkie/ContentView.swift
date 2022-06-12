//
//  ContentView.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import SwiftUI
import PushToTalk

struct ContentView: View {
    // Environment object for ContactsView & GroupView, class defined in Contact.swift
    @StateObject var contacts = ContactList(list: [Contact]())
    
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Label("Contacts", systemImage: "person.crop.circle")
                }
                
            GroupsView()
                .tabItem {
                    Label("Groups", systemImage: "person.3")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .environmentObject(contacts)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
