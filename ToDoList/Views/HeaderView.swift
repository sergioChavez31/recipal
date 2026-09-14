//
//  HeaderView.swift
//  ToDoList
//
//  Created by Sergio Chavez on 9/14/26.
//
// This file is used to template the header for each page/view of the app
import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack { // "Z-stack" - container view to layer subviews along z-axis
            RoundedRectangle(cornerRadius: 0).foregroundStyle(Color.green)
                .foregroundStyle(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("ReciPal")
                    .font(.system(size: 50))
                    .foregroundStyle(Color.white)
                    .bold()
                
                Text("Find all the recipes you need")
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
            }.padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 330)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
