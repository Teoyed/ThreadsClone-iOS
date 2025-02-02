//
//  CircularProfileImageView.swift
//  ThreadsClone-iOS
//
//  Created by Reza Ahmadizadeh on 11/14/1403 AP.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("verstappen")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(.circle)
    }
}

#Preview {
    CircularProfileImageView()
}
