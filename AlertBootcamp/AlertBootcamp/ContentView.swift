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
    
    @State var alertTitle :String = ""
    @State var alertMessage :String = ""
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)//ekranı komple kaplayarak simsiyah yap
            
            VStack{
                Button("Buton 1"){
                    alertTitle="HATA"
                    alertMessage="Bir şey oldu !"
                    
                    showAlert.toggle()//her basmada değişecek false true diye
                    
                }
                Button("Buton 2"){
                    alertTitle="Başarılı"
                    alertMessage="İşlem başarılı şekilde gerçekleşti"
                 
                    showAlert.toggle()//her basmada değişecek false true diye
                }
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
            backgroundColor = Color.yellow
               }),// buton tanımlama alerte yanı bu renk degıstırme butonu ıcın
                     secondaryButton: .cancel()//alertı kapatma cancel ıle
               //ikinci buton secondarybuttonu
               )//alert  getirme
    }
}
#Preview {
    ContentView()
}
