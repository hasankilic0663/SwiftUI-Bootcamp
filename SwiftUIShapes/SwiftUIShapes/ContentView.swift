//
//  ContentView.swift
//  SwiftUIShapes
//
//  Created by Hasan on 25.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()//çember
 //           .fill(Color.red)//arka planının rengini değiştirme
            .foregroundColor(.orange)// buda arkasını turuncu yaptı
    }
}

#Preview {
    ContentView()
}
