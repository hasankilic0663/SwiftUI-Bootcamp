//
//  ContentView.swift
//  stepperBootcamp
//
//  Created by Hasan on 9.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var stepperValue: Int = 0
    @State var viewCountValue: Int = 0
    
    var body: some View {
        VStack {
            Stepper(value: $stepperValue) { //artı eksı tusu ıle sayıyı arttırıp azaltma
                Text("Abone Sayımız : \(stepperValue)")
            }
            
            Text("İzlenme sayısı \(viewCountValue)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Stepper("İzlenme Sayısı"){
                //increment
                //viewCountValue += 10
                incrementViewCount(amount: +100)
            } onDecrement: {
                //decrement değeri 10 10 azallttık yukarıdada 10 10 arttırdık
                //viewCountValue -= 10
                incrementViewCount(amount: -100)
                
            }
        }
        .padding()
    }
    func incrementViewCount(amount: Int){
        viewCountValue += amount
    }
}

#Preview {
    ContentView()
}
