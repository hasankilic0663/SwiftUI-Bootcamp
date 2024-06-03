//
//  ContentView.swift
//  scrollviewBootcamp
//
//  Created by Hasan on 2.06.2024.
//

import SwiftUI

struct InstagramPostView:View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Image(systemName: "circle")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 40,height: 40)
                VStack(alignment:.leading){
                    Text("hasankilic0663")
                        .font(.headline)
                    Text("Kocaeli,Turkey")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()// araya koyarak ıkı tarafıda yaslıyorduk
                Image(systemName: "ellipsis")
            }
            .padding(.bottom,50)
            .padding(.horizontal,10)
            Image(.hasan)
                .resizable()
                .scaledToFit()
                
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(maxHeight: 400)
                .padding(.bottom,50)
            
                            
            HStack{
                Image(systemName: "heart")
                Image(systemName:"message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.horizontal)
            HStack{
                Text("hasankilic0663")
                    .font(.subheadline)
                    .bold()
                Text("Güzel bir yaz günü")
                    .font(.subheadline)
            }
            .padding(.horizontal)
            Text("Tüm yorumları gör")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.horizontal)
            Text("Deneme yorum burada")
                .font(.subheadline)
                .padding(.horizontal)
            Text("10 Dakika önce")
                .font(.caption)//daha kucuk gosterıyo
                .foregroundColor(.gray)
                .padding(.horizontal)
                .padding(.vertical,8)
            
                
        }
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView{
            InstagramPostView()
            InstagramPostView()
            InstagramPostView()
        }
        
        //---------------------------------------------
//        VStack{
//            ScrollView{// ekranı kaydırılabılır yapıyor
//                Rectangle()
//                    .fill(.red)
//                    .frame(height: 300)
//                Rectangle()
//                    .fill(.red)
//                    .frame(height: 300)
//                Rectangle()
//                    .fill(.red)
//                    .frame(height: 300)
//                Rectangle()
//                    .fill(.red)
//                    .frame(height: 300)
//            }
//        }
        //------------------------------------------------
//        ScrollView(.horizontal,showsIndicators: false){//yanyana kaydrıyo showINdicators ise kaydırdıgında alttakı cubugu gızlıyo
//            HStack{
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 300,height: 300)
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 300,height: 300)
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 300,height: 300)
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 300,height: 300)
//            }
//        }// bu yaptıgımız ıse yanyana koyup yan yana yapması
        
        
        
    }
}

#Preview {
    ContentView()
}
