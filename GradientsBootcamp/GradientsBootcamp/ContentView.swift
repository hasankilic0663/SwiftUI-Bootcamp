//
//  ContentView.swift
//  GradientsBootcamp
//
//  Created by Hasan on 26.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15.0)
//            .fill(LinearGradient(colors: [.red,.blue], startPoint: .bottomLeading, endPoint: .topTrailing ))//renk geçisi
            .fill(RadialGradient(gradient: Gradient(colors: [.blue,.purple]), center: .center, startRadius: 0, endRadius: 300))//merkez noktasından nekadar uzaklıktan baslayık nek adar uzaklıktan bıtıcek rengı ortadan
            .frame(width: 300,height: 200)
    }
}

#Preview {
    ContentView()
}
