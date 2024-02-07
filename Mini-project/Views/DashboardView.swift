//
//  DashboardView.swift
//  Mini-project
//
//  Created by mini project on 07/02/24.
//

import SwiftUI

struct DashboardView: View {
    
    @State var data: [String] = ["Task1", "Task2", "Task3", "Task4"]
    
    var body: some View {
        NavigationView {
            VStack {
                List(data, id: \.self) { item in
                    Text(item)
                }
            }
            .navigationTitle("Dashboard")
            .toolbar(content: {
                Button(action: {
                    // Your action here
                }) {
                    Image(systemName: "plus")
                }
            })
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
