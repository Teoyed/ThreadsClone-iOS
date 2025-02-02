//
//  FeedView.swift
//  ThreadsClone-iOS
//
//  Created by Reza Ahmadizadeh on 11/14/1403 AP.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("Refresh page")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar() {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(.black)
                }
            }

        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
