//
//  TodoListViewViewModel.swift
//  ToDoList
//
//  Created by 関佑太 on 2023/07/04.
//
import FirebaseFirestore
import Foundation

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    init(userId: String){
        self.userId = userId
    }
    
    /// Delete todo
    ///  - Parameter id: item id
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
