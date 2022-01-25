//
//  ContentView.swift
//  Shared
//
//  Created by Xiaoyu Liang on 2022-01-20.
//

import SwiftUI

struct ContentView: View {
    
    // Stores all the tasks that are being tracked
    @ObservedObject var store: TaskStore
    
    // Controls whether the add task is showing
    @State private var showingAddTask = false
    
    var body: some View {
        List {
            ForEach(store.tasks) { task in
                TaskCell(task: task)
            }
            // View modifier invokes the function on the view model, "store"
            .onDelete(perform: store.deleteItems)
        }

        .navigationTitle("Reminders")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddTask = true
                }
            }
        }
        .sheet(isPresented: $showingAddTask) {
            AddTask(store: store, showing: $showingAddTask)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
    }
}
