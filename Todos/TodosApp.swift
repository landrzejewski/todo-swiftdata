//
//  TodosApp.swift
//  Todos
//
//  Created by Łukasz Andrzejewski on 01/03/2024.
//

import SwiftUI
import SwiftData

@main
struct TodosApp: App {
    var body: some Scene {
        WindowGroup {
            TodosView()
        }
        .modelContainer(for: Todo.self)
    }
}
