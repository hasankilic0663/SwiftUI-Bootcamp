//
//  ContentView.swift
//  sheetBootcamp
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea(.all)//artık bunu kullaıcaz
            Button {
                showSheet.toggle()//butona basıldıgında true ıse false false ıse true yapacak
                
            } label: {
                Text("Button")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
                    .background(.black)
                    .cornerRadius(15)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                
            }
//            .fullScreenCover(isPresented: $showSheet){//Bu sayfada komple yenii sayfaya gecti
//                ZStack{
//                    Color.black
//                        .ignoresSafeArea(.all)
//                    Text("Merhaba Youtube")
//                        .foregroundColor(.white)
//                    
//                }
//            }
            
            
            
             .sheet(isPresented: $showSheet){//pop up sayfa acmak için kullandık
                 SecondScreen()
             }

        }
    }
}
struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationModee // az once yaptıgımız kaydırma ıslemını anlayan kod
    var body: some View {
        ZStack(alignment:.topLeading){// carpı işareti sol ustte gozuksun dıye yaptık
            Color.black
                .ignoresSafeArea(.all)
            
            Button {
                presentationModee.wrappedValue.dismiss()//sayfamızın surukelenerek kapanmasını saglayacak
                
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview {
    ContentView()
    //SecondScreen()
}
