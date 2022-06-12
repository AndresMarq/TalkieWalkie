//
//  GroupsView.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import SwiftUI

struct GroupsView: View {
    @State private var isShowingAddGroupSheet = false
    
    var body: some View {
        NavigationStack {
            Text("")
            .navigationTitle("Group Chat")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingAddGroupSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isShowingAddGroupSheet) {
                AddGroupView()
                    .presentationDetents([.medium, .large])
            }
        }
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
