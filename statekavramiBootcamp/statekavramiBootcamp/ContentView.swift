//
//  ContentView.swift
//  statekavramiBootcamp
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var healthPoints = 5 // state dememizin amacı  calısırken butona bastıgınde degısken degısımını swıftuıa bıldırıyoruz
    
    var body: some View {
        VStack {
            Text("Character Health")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            HStack{
                ForEach(0..<healthPoints,id: \.self)
                { index in
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    
                }
            }
            Button {
                healthPoints -= 1
                print("Canın değerini düşür")
            } label: {
                Image("character")
                    .resizable()
                    .frame(width: 200,height: 200)
                
            }
            Button {
                healthPoints += 1
                print("can ver")
            } label: {
                Text("Can ver")
                    .foregroundColor(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50)
                    .background(.green)
                    .cornerRadius(15)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }


        }
        .padding()
    }
}

#Preview {
    ContentView()
}
