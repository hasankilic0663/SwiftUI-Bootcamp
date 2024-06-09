//
//  ContentView.swift
//  gecevegunduzModu
//
//  Created by Hasan on 9.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    //kullanıcının color temasını ogrenme
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    Text("Burası PRIMARY")
                        .foregroundStyle(.primary)
                    Text("Burası Secondary")
                        .foregroundStyle(.secondary)
                    Text("Siyah yazı")
                        .foregroundStyle(.black)//burda dark mode da gozukmez siyah
                    Text("Beyaz")
                        .foregroundStyle(.white)//burasıda aynı sekil
                    
                    Text("Burası Mavi")
                        .foregroundStyle(.blue)
                    Text("MARKA RENGİ")
                        .foregroundStyle(Color("BrandColor"))
                    Text("Burası adaptif")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow
                        )
                }
                .padding()
            }.navigationTitle("Light Mode Dark Mode")
        }
    }
    
}

#Preview {
    ContentView()
}
