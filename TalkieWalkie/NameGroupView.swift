//
//  NameGroupView.swift
//  TalkieWalkie
//
//  Created by Andres Marquez on 2022-06-11.
//

import SwiftUI

struct NameGroupView: View {
    @State private var groupName = ""
    
    var body: some View {
        Grid {
            GridRow {
                Text("Group Name")
                    .bold()
                TextField("Type group name here", text: $groupName)
                    .frame(maxWidth: 200, maxHeight: 30)
                    .padding(10)
                    .border(Color.black)
            }
            
            Button {
                // To do
            } label: {
                Text("Submit")
            }
        }
    }
}

struct NameGroupView_Previews: PreviewProvider {
    static var previews: some View {
        NameGroupView()
    }
}
