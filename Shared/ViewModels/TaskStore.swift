//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Xiaoyu Liang on 2022-01-20.
//

import Foundation

class TaskStore: ObservableObject {
    
    // MARK: Stored properties
    @Published var tasks: [Task]
    
    // MARK: Initializers
    init(tasks: [Task] = []) {
        
//        // Get a URL that points to the saved JSON data containing our list of tasks
//        let filename = getDocumentDirectory
        
        self.tasks = tasks
    }
    
    // MARK: Functions
    func deleteItems(at offsets: IndexSet) {
        // "Offsets" contains a set of items selected for deletion.
        // The set is then passed to the built-in "remove" method on the "tasks" array which handles removal from the array
        tasks.remove(atOffsets: offsets)
    }
    
    // Invoked to move items around in our list
    func moveItems(from source: IndexSet, to destination: Int) {
        // "source" again contains a set of item(s) being moved
        // "destination" is the location the items are being moved to in the list
        // These arguments are automatically populated for us by the .onMove view modifier provided by the SwiftUI framework
        tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    
}

let testStore = TaskStore(tasks: testData)
