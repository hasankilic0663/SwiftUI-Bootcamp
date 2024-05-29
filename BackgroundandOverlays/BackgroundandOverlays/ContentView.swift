//
//  ContentView.swift
//  BackgroundandOverlays
//
//  Created by Hasan on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Merhaba HASAN")
            .background(
                Circle()
                    .fill(.red)
                    .frame(width: 150,height: 150)
            )
            .background(
                Circle()
                    .fill(.blue)
                    .frame(width: 170,height: 170)
                        
            )
        
    }
}

#Preview {
    ContentView()
}
