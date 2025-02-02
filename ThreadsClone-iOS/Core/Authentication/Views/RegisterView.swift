//
//  RegisterView.swift
//  ThreadsClone-iOS
//
//  Created by Reza Ahmadizadeh on 11/14/1403 AP.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("threads-app-icon")
                .resizable()
                .modifier(AuthViewIconModifier())
            
            VStack {
                TextField("Enter your Email", text: $email)
                    .autocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                SecureField("Enter your Password", text: $password)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your Fullname", text: $fullname)
                    .modifier(TextFieldModifier())
                
                TextField("Enter your Username", text: $username)
                    .modifier(TextFieldModifier())
            }
            
            Button{
                
            } label: {
                Text("Sign Up")
                    .modifier(AuthButtonModifier())
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegisterView()
}
