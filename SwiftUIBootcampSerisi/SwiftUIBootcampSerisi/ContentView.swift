//
//  ContentView.swift
//  SwiftUIBootcampSerisi
//
//  Created by Hasan on 25.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Youtube! ")
                .font(.largeTitle)
                .foregroundColor(Color.green)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
