//
//  ContentView.swift
//  actionsheetBootcamp
//
//  Created by Hasan on 7.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var showActionSheet : Bool = false
    
    var body: some View {
        VStack {
//            Button {
//                showActionSheet.toggle()//herbutona bastıkca degıscek
//            } label: {
//                Text("Merhaba Hasan")
//            }
//            .actionSheet(isPresented: $showActionSheet) {
//                
//                ActionSheet(title: Text("Abone Ol!"))//alttan gelen bı buton merhaba hasana tıklarsan gorursun
//            }
            
            HStack{
                Circle()
                    .frame(width: 50,height: 50)
                    Text("@hasankilic0663")
                Spacer()//arayı acma bosluk bırakma
                Button {
                    showActionSheet.toggle()
                    
                } label: {
                    Image(systemName: "ellipsis")//üç nokta
                }
                .accentColor(.primary)
                
                

                
                
            }
            Rectangle()
                .aspectRatio(1.0,contentMode: .fit)//boyut verdı

        }
        .padding()
        .actionSheet(isPresented: $showActionSheet, content: {//aksıyon butonu gibi bisey sagdaku 3 noktaya tıkladıgında alttan gelen abone ol gbi butonlar
            getactionSheet()
        })
    }
    func getactionSheet() -> ActionSheet {
        let aboneOl:ActionSheet.Button = .default(Text("Abone Ol"))
        let yorumYap : ActionSheet.Button = .destructive(Text("Yorum Yap"))
        let cancelButton :ActionSheet.Button = .cancel()
        
        return ActionSheet(title: Text("Burası Başlık alanı"),
                           message: Text("Burası mesaj kısmı"),
                           buttons: [aboneOl,yorumYap,cancelButton]
        
        
        )
    }
}

#Preview {
    ContentView()
}
