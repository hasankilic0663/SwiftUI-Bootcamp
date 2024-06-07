//
//  ContentView.swift
//  textFieldBootcamp
//
//  Created by Hasan on 7.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var textFieldText: String = ""
    @State var todoList:[String] = []
    
    var body: some View {
        NavigationView{
            VStack {
               TextField("Bir şeyler yaz...", text: $textFieldText)
                    .padding()
                    .background(.gray.opacity(0.3))//opacity rengi koyu ve acık yapması
                    .cornerRadius(5)
                    .font(.headline)
                Button {
                    if textIsNotNull() {//burada bos degılse kaydederım
                        saveTodo()
                    }
                    
                } label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(textIsNotNull() ? .blue : .gray)// içinde yazı yazıyorsa mavı yazmıyosa gray
                        .foregroundColor(.white)
                        .cornerRadius(5)
                        .font(.headline)
                }
                ForEach(todoList,id: \.self){index in
                    Text(index)
                    
                }

                
                Spacer()
                
            }
            .padding()
            .navigationTitle(Text("Basic ToDo App "))
        }
        
        
        }
    
    func textIsNotNull() -> Bool {//bunun amacı texte bişey yazmıyorsa save butonunu kapalı tutmak
        if textFieldText.count >= 1 {
            return true
        }
        return false
    }
    
    func saveTodo(){
        todoList.append(textFieldText )//burada yazdıgın seyı asagıya eklıyo
        textFieldText = ""
    }
    
        
}

#Preview {
    ContentView()
}
