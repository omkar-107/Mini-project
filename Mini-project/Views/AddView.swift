//
//  AddView.swift
//  Mini-project
//
//  Created by mini project on 07/02/24.
//

import SwiftUI

struct AddView: View {
    @State var todo : Task
    
    var body: some View {
        VStack(alignment: .leading) {
                Text("Title")
                    .padding(.horizontal)
                TextField("Title", text: $todo.title)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Text("Description")
                    .padding(.horizontal)
                TextField("Description", text: $todo.description)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                DatePicker("Due Date", selection: $todo.dueDate, in: Date()..., displayedComponents: .date)
                    .padding()

            if let phoneNumber = todo.contact?.phoneNumber {
                           Text("Contact: \(phoneNumber.stringValue)")
                               .padding(.horizontal)
                       } else {
                           Text("Add Contact")
                               .padding(.horizontal)
                       }
            Spacer()
            
            
           
            }
        }}

#Preview {
    NavigationView {
        AddView( todo: Task(contact: ContactInfo(firstName: "name", lastName: "name")))
       }
    
}

