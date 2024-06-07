//
//  ContentView.swift
//  toggleBootcamp
//
//  Created by Hasan on 7.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOnline : Bool = false
    var body: some View {
        VStack {
//            Toggle(isOn: $toggleIsOn) {
//                Text("Aktif mi ?")
//            }
            
            HStack{
                Text("Status: ").bold()
                Text(isOnline ? "Online" : "Offline").bold()
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Toggle(isOn: $isOnline) {// burda toggle i acarsak online kapatırsak offline olur
                Text("Change Status : ")
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
