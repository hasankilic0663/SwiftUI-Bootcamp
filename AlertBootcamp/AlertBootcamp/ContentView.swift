//
//  ContentView.swift
//  AlertBootcamp
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.black
    @State var backgroundColors: Color = Color.black
    @State var alertTitle :String = ""
    @State var alertMessage :String = ""
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)//ekranı komple kaplayarak simsiyah yap
            
            VStack{
                Button("Beyaz arka plan"){
                    alertTitle="HATA"
                    alertMessage="Bir şey oldu !"
                    backgroundColors=Color.white
                    
                    
                    showAlert.toggle()//her basmada değişecek false true diye
                    
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .foregroundColor(.black)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Button("Kırmızı Arka plan"){
                    alertTitle="Başarılı"
                    alertMessage="İşlem başarılı şekilde gerçekleşti"
                    backgroundColors=Color.red
                 
                    showAlert.toggle()//her basmada değişecek false true diye
                }
                .padding()
                .background(.red)
                .cornerRadius(10)
                .foregroundColor(.white)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            
            .alert(isPresented: $showAlert){
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert { //alert olarak tanımlıyoruz
        return Alert(title: Text(alertTitle),//iki butonda yazana gore cıkıyo alerttıtle
                     message: Text(alertMessage),// aynı şekildeburadada gecerli
                     primaryButton: .destructive(Text("Rengi Değiştir"),action: {
            backgroundColor = backgroundColors
               }),// buton tanımlama alerte yanı bu renk degıstırme butonu ıcın
                     secondaryButton: .cancel()//alertı kapatma cancel ıle
               //ikinci buton secondarybuttonu
               )//alert  getirme
    }
}
#Preview {
    ContentView()
}
