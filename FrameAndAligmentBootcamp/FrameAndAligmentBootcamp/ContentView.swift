//
//  ContentView.swift
//  FrameAndAligmentBootcamp
//
//  Created by Hasan on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Merhaba Kick. Ben Hasan")
//            .background(.green)
//            .frame(width: 300,height: 300,alignment:.leading)//aligmant ile hizalama yapıyoruz
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)//bunlar max genıslık ve yukseklık ıcın sınırsız verdı
//            .background(.red)//ensona ekledıgımız sey kendınden oncekıne etkı edıyo yanı ornektede bellı oldugu gibi
        
        Text("Youtube")
            .background(.green)
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .background(.orange)
            .frame(width: 150)
            .background(.purple)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(.pink)
            .frame(height: 400)
            .background(.yellow)
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .top)
            .background(.black)
        
    }
}

#Preview {
    ContentView()
}
