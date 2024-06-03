//
//  ContentView.swift
//  safeareaBootcamp
//
//  Created by Hasan on 3.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hasan")
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
//            .background(.red)
        
        ScrollView{
            VStack{
                Text("Merhaba Hasan")
                    .font(.largeTitle)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
                ForEach(0..<10){index in
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                        
                    
                }
            }
        }.background(.red)
            //.edgesIgnoringSafeArea(.all)//safeareaa ile daha yukaradan baslama yanı ıptal etme .--- yani uygulama yukardan baslıyo guvenli alanı yok ettik
    }
}

#Preview {
    ContentView()
}
