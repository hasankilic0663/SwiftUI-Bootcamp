//
//  ContentView.swift
//  navigationStack
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                Text("Merhaba Hasan")
                
                NavigationLink("Eski Yöntem"){// tıklayarak ikinci sayfaya gidip texti gorecen
                    Text("İkinci Sayfa")
                }
                NavigationLink("Yeni Yöntem ",value: "@hasankilic0663")
                    .navigationDestination(for: String.self) { textvalue in
                        Text("İkinci Sayfa detayı: \(textvalue)")
                    }
            }
            .navigationTitle("Home")//Sayfanın baslıgı gibi
//            .navigationBarTitleDisplayMode(.inline)//topbar yapıyo ve home yazısı yukarıya gecti
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}
