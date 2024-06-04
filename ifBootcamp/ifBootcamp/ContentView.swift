//
//  ContentView.swift
//  ifBootcamp
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack{
            
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)//safearea ile heryeri kırmızı yaptı
            Button {
                //if-else
                if backgroundColor == Color.white {
                    backgroundColor = Color.blue
                }
                else if backgroundColor == Color.pink{
                    backgroundColor=Color.white
                }
                else{
                    backgroundColor = Color.green
                }

                
            } label: {
                Text("Rengi değiştir")
                    .foregroundColor(.white)
                    .frame(width: 300,height: 100)
                    .background(.black)
                    .cornerRadius(10)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
               
                
            }

            
        }
        
    }
}

#Preview {
    ContentView()
}
