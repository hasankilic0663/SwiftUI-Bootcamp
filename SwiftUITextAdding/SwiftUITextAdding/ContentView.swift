//
//  ContentView.swift
//  SwiftUITextAdding
//
//  Created by Hasan on 25.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Merhaba, Hasan! ".capitalized) // capitalized ise baş harfleri büyük yapıyo
        //tum karakterler kucuk oluyo lowercased() da
        
//            .frame(width: 100,height: 100)
//            .minimumScaleFactor(0.1)//font buyuklugu oranlıyo 0.1 boyutuna kucultuyo
         //   .multilineTextAlignment(.center)// yazıyı ortalıyo
 //           .foregroundColor(.red)
 //           .baselineOffset(-50.0)// satırlar arası boşluk buyuklugu
        
       //     .kerning(5)// harfler arasını açıyo
           // .foregroundColor(.green)
           // .font(.largeTitle)// telefonlara göre oranlayarak buyultuyor
        
//            .font(.system(size: 24.0)) //boyutunu arttırıyo bu ise direk boyutu 24 veriyoruz
//            .fontWeight(.bold)
            //.font(.headline)
//            .bold()//kalın yazma
//            .underline() // altını çizme
//            .italic()//italik yazı
//            .strikethrough()//üstü çizili
//        // command ? ile komple yorum satırı yapabılıyoruz
//            .underline(true,color: .red)// altını kırmızı ile çizme
//            .strikethrough(true,color: .green)//üstünü yeşil ile çizme
        
    }
}

#Preview {
    ContentView()
}
