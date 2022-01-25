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
        self.tasks = tasks
    }
    
    // MARK: Functions
    func deleteItems(at offsets: IndexSet) {
        // "Offsets" contains a set of items selected for deletion.
        // The set is then passed to the built-in "remove" method on the "tasks" array which handles removal from the array
        tasks.remove(atOffsets: offsets)
    }
    
}

let testStore = TaskStore(tasks: testData)
