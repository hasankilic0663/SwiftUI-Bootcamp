//
//  ContentView.swift
//  StackBootcamp
//
//  Created by Hasan on 30.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {/*spacing ise aralarındaki bosluku ayarlar*/
        //aligment ise cerceve icindeki nesneleri hizalıyor
//        VStack(alignment: .leading,spacing: 50){//VStack alt  alta sıralama . HStack ise yanyana sıralar
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200,height: 200)
//            Rectangle()
//                .fill(.black)
//                .frame(width: 150,height: 150)
//            
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//        }
        //-------------------------------------------------------
//        ZStack(alignment:.top){
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150,height: 150 )
//            VStack(alignment:.leading, spacing: 20){
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 30,height: 30)
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 30,height: 30)
//                HStack(alignment:.bottom,spacing: 30){
//                    Rectangle()
//                        .fill(.black)
//                        .frame(width: 40,height: 40)
//                    Rectangle()
//                        .fill(.black)
//                        .frame(width: 40,height: 40)
//                }
//                .background(.blue)
//                    
//                
//            }
//            .background()
//            
//            
//        }
        //----------------------------------------------------------
//        VStack(spacing:50){
//            ZStack{
//                Circle()// cember
//                    .fill(.red)
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
//                    Text("Youtube")
//                    .foregroundStyle(.white)//yazı rengi değiştirme
//            }
//            Text("Twitter")
//                .foregroundColor(.white)
//                .background(
//                    Circle()
//                        .fill(.red)
//                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
//                
//                )
//        }
        //------------------------------------------------------------
        
        ZStack{
            Circle()
                .fill(.black)
                .frame(width:75,height: 75)
            Image(systemName: "cart")
                .font(.largeTitle)
                .foregroundColor(.white)

        }
        .overlay(
            Circle()
                
                .fill(.orange)
                .frame(width: 30,height: 30)
                .overlay(
                    Text("8")
                        .foregroundStyle(.white)
                )
                ,alignment: .topTrailing
        
        )
        
    }
}

#Preview {
    ContentView()
}
