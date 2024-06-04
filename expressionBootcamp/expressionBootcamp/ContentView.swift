//
//  ContentView.swift
//  expressionBootcamp
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var baslangicdegeri: Bool = false
    @State var a = 5
    @State var b = 8
    var body: some View {
        VStack {
            
            Button {
                baslangicdegeri.toggle()// toggle edecek yanı true ise false , false ise true yapacak
            } label: {
                Text("Buton: \(baslangicdegeri.description)")//description bilmiyorum
            }

            
//            if baslangicdegeri {
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .fill(.red)
//                    .frame(width: 200,height: 100)
//            }
//            else{
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .fill(.blue)
//                    .frame(width: 200,height: 100)
//                
//            }
//
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(baslangicdegeri==true ? Color.red : Color.blue)// yukarıdaki if elsenin kolay hali burada tek satırda yapılıyo
                .frame(width: 200,height: 100)
            
            
            Text( a == b ? "İfade doğru" : "İfade yanlış")
            Text( a != b ? "İfade doğru" : "İfade yanlış")
            Text( a < b ? "İfade doğru" : "İfade yanlış")
            Text( a > b ? "İfade doğru" : "İfade yanlış")
            Text( a <= b ? "İfade doğru" : "İfade yanlış")
            Text( a >= b ? "İfade doğru" : "İfade yanlış")
                
        }
        
    }
}

#Preview {
    ContentView()
}
