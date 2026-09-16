//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//
import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
            
            VStack {
                Text("Click the \"+\" icon to get started with entering a recipe's title/name, the recipe and ingredients themselves, and a date you plan on making it  :)").padding() .border(Color.brown)
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("delete") {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
            }
            .navigationTitle("ReciPal")
            .toolbar {
                Button {
                    // Action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "vwZytp65CThOfjgaPbcWpRWL9kB3")
}
