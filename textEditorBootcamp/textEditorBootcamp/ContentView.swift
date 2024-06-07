//
//  ContentView.swift
//  textEditorBootcamp
//
//  Created by Hasan on 7.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var textEditorText: String = "Varsayılan metin"
    @State var savedText : String = ""
    var body: some View {
        NavigationView{
            VStack{
                Text(savedText)//burada ise kaydettıgımız textı gosterıyoruz
                TextEditor(text: $textEditorText)
                    .frame(height: 300)
                    .colorMultiply(.gray)//bu container içini renk değiştiriyo
                    .cornerRadius(15)
                Button {
                    savedText = textEditorText// save butonuna tıklandıgındatextekş kısı savedtezte kaydedılcek
                } label: {
                    Text("Save")//save butonu yaptık
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(.blue)
                        .cornerRadius(15)
                    
                }
                Spacer()

                
                
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp")
        
        }
    }
}

#Preview {
    ContentView()
}
