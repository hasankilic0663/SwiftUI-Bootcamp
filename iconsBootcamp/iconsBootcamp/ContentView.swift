//
//  ContentView.swift
//  iconsBootcamp
//
//  Created by Hasan on 27.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "heart.fill")//kalp simgesi iconu
            .renderingMode(.original)
//            .font(.title) buyultuyo baslık gıbı
//            .font(.system(size: 300))// boyut ayarlama kalbın
            .resizable()//cerceve boyutu kadar yani frame değeri kadar buyutur
            .aspectRatio(contentMode: .fit)//buda cerceve tasmadan kendi içnde ustten ve allttan kısarak orjınal boyut yaptı. Fit ve fill farkı
            //.scaledToFit()//yukardaki ile aynı
            .scaledToFill()//asagıdakı ıle aynı
            //.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)//cerceve kenarı orjinali ile taşmasını saglay. orijinal oranı koru
            //.foregroundColor(.red)//kalbi kırmızı yaptık
            .frame(width: 300,height:300)
            .clipped()//taşan kısımları kesiyo buda
        
            
    }
}

#Preview {
    ContentView()
}
