//
//  ContentView.swift
//  extractfunction
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var backgroundcolor: Color = Color.green
    
    var body: some View {
        ZStack{
            //background tanımlamamızı yaptık
            backgroundcolor
                .edgesIgnoringSafeArea(.all)//tum sayfaya aynı rengı verdı safearea yanı iptal etti
            //Content kısmımızı tanımladık
            contentView
            
        }
    }
    
    var contentView: some View{
        VStack {
            Text("Hasan")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Button {
                buttonPressed()
            } label: {
                Text("BANA TIKLA")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()// paddingi buraya verelimki arka rengı genıs dursun
                    .background(.black)
                    .cornerRadius(10)
            }
            
        }
        .padding()
    }
    
    func buttonPressed(){
        backgroundcolor=Color.blue
    }
}

#Preview {
    ContentView()
}
