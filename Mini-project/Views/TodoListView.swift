//
//  DashboardView.swift
//  Mini-project
//
//  Created by mini project on 07/02/24.
//
import SwiftUI

struct TodoListView: View {
   
    @ObservedObject var todolistviewmodel = TodoListViewModel()

    var body: some View {
        
        NavigationView{
            VStack {
                List(todolistviewmodel.tasks, id: \.id) { task in
                    NavigationLink(destination: TaskDetailView(task: task.title)) {
                        Text(task.title)
                    }
                }
            }
            .navigationTitle("Dashboard 📋")
            .navigationBarItems(trailing:
                                    NavigationLink(destination:  AddView( todo: Task(contact: ContactInfo(firstName: "name", lastName: "name")))) {
                    Image(systemName: "plus")
                }
            )
        }.environmentObject(todolistviewmodel)
        
        .edgesIgnoringSafeArea(.all)
    }
}





struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        
            TodoListView()
       
            
    
    }
}
