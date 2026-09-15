//
//  ToDoListItemViewModel.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//

// View Model for list of items view
// goes into Primary tab
import FirebaseAuth
import FirebaseFirestore
import Foundation
class ToDoListItemViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
