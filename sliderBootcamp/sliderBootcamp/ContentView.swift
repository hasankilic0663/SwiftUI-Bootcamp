//
//  ContentView.swift
//  sliderBootcamp
//
//  Created by Hasan on 9.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var sliderValue : Double = 10
    @State var  textColor: Color = .red
 
    
    var body: some View {
        VStack {
            Text("Slider Değeri :")
            Text(
                String(format: "%.2f", sliderValue) // sondan 2 rakam alıyo sadeeceaynı zamanda steplede yaaparız asagı kısımda yaptıgmız gıbı
            )
            .foregroundStyle(textColor)
//            Slider(value : $sliderValue, in: 0...100,step: 0.5)// yan cizgi 0 ila 100 arası değer doluluk oranı gosterıyo
//                .tint(.yellow)// çizginin rengini değiştiryouruz
            
            Slider(value: $sliderValue, in : 1...5,step: 1) {// step 1er 1er attladı 
                Text("Slider DEĞERİ")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged : { (_) in
                textColor = .green // kaydırdıgın an kırmızıdan yeşile döndü
                
                
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
