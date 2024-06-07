//
//  ContentView.swift
//  contextMenuBootcamp
//
//  Created by Hasan on 7.06.2024.
//
// butona basıldıgında aksıyon butonlar cıkıcak
import SwiftUI

struct ContentView: View {
    @State var backgroundcolor:Color = .red
    
    var body: some View {
        VStack {
           Image(systemName: "house.fill")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Youtube Evim")
                .font(.headline)
           Text("Abone Ol!")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundcolor)
        .cornerRadius(20)
        .padding()
        .contextMenu{//basılı tutuldugunda ustunde cıkan butonlar
            Button {
                backgroundcolor = .orange
            } label: {
                Label("Abone Ol", systemImage: "bell.fill")
            }
            Button {
                backgroundcolor = .yellow
            } label: {
                Label("Yorum Yap", systemImage: "text.bubble")
            }
            Button {
                backgroundcolor = .blue
            } label: {
                Label("Videoyu Beğen", systemImage: "hand.thumbsup")
            }

        }//basılı tutunca o butonlar geliyo
    }
}

#Preview {
    ContentView()
}
