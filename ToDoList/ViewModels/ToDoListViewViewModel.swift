//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//
import FirebaseFirestore
import Foundation

// ViewModel for single to do list item view 
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
