//
//  ContentView.swift
//  bindingBootcamp
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundcolor: Color = Color.blue
    var body: some View {
        ZStack{
            //Background işlemi
            backgroundcolor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)//safearea ile heryere aynı rengi uyguladık
            
            //Content
            ButtonView(renkkodu: $backgroundcolor)// değişken olup state kavramı olup bındıng ıslemı uyguluyoruz bunla
            
        }
       
    }
}

struct ButtonView :View{
    @Binding var renkkodu: Color
    var body: some View{
        VStack {
            Button {
                renkkodu = Color.red
            } label: {
                Text("Rengi değiştir")
                    .foregroundColor(.white)
                
            }
            .frame(width: 300,height: 100)
            .background(.black)
            .cornerRadius(10)
            .shadow(radius: 10)

        }
        
    }
}

#Preview {
    ContentView()
}
