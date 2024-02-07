//
//  ProfileView.swift
//  Mini-project
//
//  Created by mini project on 07/02/24.
//

import SwiftUI

struct ProfileView: View {
    @State var name = "Saurabh Rajopadhye"
    @State var contact = 1234567891
    @State var appleid = "ABCD@123"
    @State private var hovering = false
    
    var body: some View {
        VStack(spacing: 30.0){
            HStack{
                
                
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .padding()
                        .font(.title)
                    
                }
                
                
                Spacer()
            }
            
            VStack(spacing: 90.0){
                
                Text("Profile")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .shadow(radius: 10)
                
                VStack{
                    Text("Hello,")
                        .font(.title)
                        .bold()
                    Text(name)
                        .font(.title)
                        .bold()
                }
                
                
                
                VStack(spacing: 20.0){
                    
                    HStack{
                        Spacer()
                        Image(systemName: "person.crop.circle.fill").font(.largeTitle).foregroundColor(.black)
                        Text("Contact: " + "+91-" + String(contact))
                            .font(.title2)
                        
                        Spacer()
                        
                    }
                    
                    
                    HStack{
                        Spacer()
                        Image(systemName: "envelope")
                            .font(.title)
                        Text("AppleID: " + appleid)
                            .font(.title2)
                        Spacer()
                        
                    }
                }
                
                
                
                Button(action: {
                    // No action specified
                }) {
                    Text("Edit Profile")
                        .foregroundColor(.blue)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color.blue.opacity(0.1))
                                        .opacity(.init(self.hovering ? 1 : 0))
                                )
                        )
                        .shadow(color: Color.blue.opacity(0.5), radius: 5, x: 0, y: 2)
                }
                .onHover { hovering in
                    self.hovering = hovering
                }
            }.padding(.all)
            
        }
        .padding()
    }
    
    
    
    
    
}

#Preview {
    ProfileView()
}
