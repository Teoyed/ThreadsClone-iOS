//
//  ThreadCell.swift
//  ThreadsClone-iOS
//
//  Created by Reza Ahmadizadeh on 11/14/1403 AP.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Image("verstappen")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("maxverstappen1")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray2))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }

                    }
                    
                    Text("Formula 1 champion")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .padding(.vertical, 8)
                    .foregroundStyle(.black)
                }
            }
            
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
