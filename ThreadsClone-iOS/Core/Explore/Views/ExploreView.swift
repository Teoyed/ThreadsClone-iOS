//
//  ExploreView.swift
//  ThreadsClone-iOS
//
//  Created by Reza Ahmadizadeh on 11/14/1403 AP.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(1 ... 10, id: \.self) { user in
                        VStack {
                            UserCell()
                            
                            Divider()
                        }
                        .padding(.vertical, 4 )
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Sreach")
        }
    }
}

#Preview {
    ExploreView()
}
