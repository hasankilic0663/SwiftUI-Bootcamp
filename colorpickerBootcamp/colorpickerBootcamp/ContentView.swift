//
//  ContentView.swift
//  colorpickerBootcamp
//
//  Created by Hasan on 7.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor : Color = .red
    
    var body: some View {
        
        ZStack{
            selectedColor
                .ignoresSafeArea(.all)
            ColorPicker(selection: $selectedColor) {//renk butonu cagırıyo arka tarafın rengini değiştiriyo
                
                Text("Abone ol ")
                
            }
            .padding()
            .background(.black)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
            .padding()
            
            
        }
    }
}

#Preview {
    ContentView()
}
