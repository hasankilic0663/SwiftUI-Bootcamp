//
//  ContentView.swift
//  ColorsBootcamp
//
//  Created by Hasan on 26.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    var uiColor=UIColor(red:1.0 , green:1.0, blue: 1.0, alpha: 1.0)
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .frame(width: 300, height: 200)// kutu yaptık corner radıusıse koselerı ovallestırıyo
            //.foregroundColor(Color.primary)// primary sayeesinde dark ve lıght mod geçişte değişmesi
            //.foregroundColor(Color("CustomColor"))// burada kendı assetimizden yaptıgımız ismi cagırarak dark ve lıght renklerı getiriyoruz
            .foregroundColor(Color(uiColor))// burada yukarda verdiğimiz parametredeki rgb değerler ile arka rengini değiştirdik 
           // .shadow(radius:330.0)//gölgelendirme en iyisi bu
            .shadow(color: .red, radius: 10.0, x: 0,y: 10) // kırmızı gölgelendirme yaptı ve burda x y ile ne tarafına yapacagımızı gosteriyoruz
    }
}

#Preview {
    ContentView()
}
