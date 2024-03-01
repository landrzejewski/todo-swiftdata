//
//  TodosView.swift
//  Todos
//
//  Created by Łukasz Andrzejewski on 01/03/2024.
//

import SwiftUI

struct TodosView: View {
    
    @Environment(\.modelContext) var modelContext
    @State private var path = [Todo]()
    
    var body: some View {
        NavigationStack(path: $path) {
            TodoListView()
                .navigationDestination(for: Todo.self, destination: TodoFormView.init)
                .toolbar {
                    Button("Add") {
                        let todo = Todo(title: "")
                        modelContext.insert(todo)
                        path = [todo]
                    }
                }
        }
    }
}

#Preview {
    TodosView()
}
