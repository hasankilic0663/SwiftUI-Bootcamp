//
//  ContentView.swift
//  BackgroundandOverlays
//
//  Created by Hasan on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Merhaba HASAN")
//            .background(
//                Circle()
//                    .fill(//burada linear gradient ile arka planı iki renklı yaptık .
//                        LinearGradient(gradient:Gradient(colors: [.red,.orange]),startPoint: .trailing ,endPoint: .leading)
//                        )
//                    .frame(width: 190,height: 150)
//            )
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
//                    )
//                    .frame(width: 170,height: 170)
//                        
//            )
        //------------------------------------------------
//        Circle()
//            .fill(.red)
//            .frame(width: 150,height: 150)
//            .overlay( //üstüne çizme
//                Text("Hasan")
//                    .font(.largeTitle)
//                    .foregroundStyle(Color(.white))
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 170,height: 170)
//                
//            )
        //-------------------------------------------------
//        Rectangle()
//            .frame(width: 200 ,height: 200)
//            .overlay(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 50,height: 50),
//                alignment: .topLeading//sol ust koseye yasladı kırmızı kutuyu
//                
//            )
//            .background(
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 250,height: 250),
//                alignment: .bottomLeading//sol alt koseye yasladı siyah kutuyu
//            )
//
        //burada begenı butonu yaptık
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.pink]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                        
                    )
                    .frame(width: 140,height: 140)
                    .shadow(color: .red, radius:/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x:0,y:7)
                    .overlay(
                        Circle()
                            .fill(.purple)
                            .frame(width:45,height:45)
                            .overlay(
                                Text("10")
                                    .foregroundColor(.white)
                                
                                    
                            ),alignment: .topTrailing
                        
                    )
            )
//
    }
}

#Preview {
    ContentView()
}
