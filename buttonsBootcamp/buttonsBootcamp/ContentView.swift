//
//  ContentView.swift
//  buttonsBootcamp
//
//  Created by Hasan on 3.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isToggled = true
    
    var body: some View {
        VStack {
            Button("Basic Buton"){
                print("Basit butona tıklandı.")
            }
            .padding()
            
            Button {
                print("Basit arka planlı butona tıklandı")
            } label: {
                Text("Basit arka planlı buton")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            Button {
                print("cıktıı")
            } label: {
                Text("Kenarlıklı buton")
                    .padding()
                    .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.red,lineWidth: 2)//cerceve halıne getırıyo
                        
                    )
                    .foregroundColor(.red)
                    .font(.headline)
            }
            
            Button {
                print("tıkıyooo")
            } label: {
                HStack{
                    Image(systemName: "hand.thumbsup.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .padding(.horizontal)
                    Text("Videoyu Beğen")
                        .font(.headline)
                        .foregroundColor(.red)
                    
                }
                .padding()
                .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.red,lineWidth: 2)
                
                    
                )
                
                
            }
            .padding()
            Toggle(isOn: $isToggled) {
                Text("Toggle Buton")
                    .font(.headline)
            }
            .padding()
            
            
            Menu {
                Button("Opsiyon 1 "){
                    //fonksiyon kısmı burada
                    print("ops1 tıklandı")
                }
                Button("Opsiyon 2 "){
                    //fonksiyon kısmı burada
                    print("ops2 tıklandı")
                }
                Button("Opsiyon 3 "){
                    //fonksiyon kısmı burada
                    print("ops3 tıklandı")
                }
            } label: {
                Text("Açılır Menü")
            }



            

        }
            .padding()
    }
}

#Preview {
    ContentView()
}
