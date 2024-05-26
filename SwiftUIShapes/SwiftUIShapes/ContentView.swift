//
//  ContentView.swift
//  SwiftUIShapes
//
//  Created by Hasan on 25.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
       // Capsule()//kapsul tarzı
//        Ellipse() //elips
      // Rectangle()//dikdörtgen
        
        RoundedRectangle(cornerRadius: 10.0)//koseleri ayarlamada ayarlı dıkdortgen
            .frame(width: 200,height: 100)
//            //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        
       // Circle()//çember
 //           .fill(Color.red)//arka planının rengini değiştirme
            //.foregroundColor(.orange)// buda arkasını turuncu yaptı
        //linewidth ise dış cerceve kalınlıgı
       //    .stroke(Color.blue , lineWidth: 10.0)//içini bos yaptı mavi dış çerçeve
//            .stroke(style:   StrokeStyle(lineWidth:10,lineCap: .round,dash: [30]))//kesikli cizgi linewidth ise cerceve kalınlıgı kesikli zaten
//        
//            .trim(from:0.3 , to: 4.0)//burada yuzdelık yapabılırız stroke ıle
//            .stroke(Color.purple,lineWidth: 50)
//        
        
    }
}

#Preview {
    ContentView()
}
