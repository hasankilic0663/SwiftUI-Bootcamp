//
//  ContentView.swift
//  pickerBootcamp
//
//  Created by Hasan on 7.06.2024.
//

import SwiftUI
// picker bi butona bastıgınzda ekranda bır pop up seklınde bır menu acıp secmek ıstıyorsan
struct ContentView: View {
    
    @State var selection :String = "Seçiniz"
    @State var selection2 :String = "Seçiniz"
    let filterOption: [String] = [
    "Abone ol ", "Yorum yap" , "Videoyu beğen"
    ]
    
    
    
    var body: some View {
        VStack {
            List{
                Picker(selection: $selection) {
                    ForEach(filterOption,id: \.self ){item in
                        Text(item.capitalized).tag(item)//tagin amacı hangisi oldgunu anlamak

                        
                    }

                } label: {
                    HStack{
                        Text("Filter : ")
                        //secilen ogeyi yazdır
                    }
                }
                Picker("Abone ol",selection: $selection2){
                    ForEach(filterOption,id: \.self){option in
                        Text(option)
                    }

                }
                .pickerStyle(.segmented)// tab görünümü
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
