//
//  TLButton.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Attempt Log in
            
            // action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title).bold()
                    .foregroundColor(Color.white)
            }
        }
    }
}

#Preview {
    TLButton(title: "Hello", background: .blue) {
        
    }
}
