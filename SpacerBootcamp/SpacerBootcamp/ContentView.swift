//
//  ContentView.swift
//  SpacerBootcamp
//
//  Created by Hasan on 30.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:0){//nil bos deger atamak spacing ise nesne arası oran bosluk ayarlama
            Spacer()//Spcaer ile bosluk olusturmak
                .frame(width: 10)
                .background(.white)
            Rectangle()
                .frame(width: 50,height: 50)
                .foregroundColor(.red)
            Spacer(minLength: 30)//burada spacer min 10 cm uzun olacak diğerleri gbi ayarlı degıl
                .frame(width: 10)
                .background(.black)
            Rectangle()
                .frame(width: 50,height: 50)
                .foregroundColor(.blue)
            Spacer()//Spcaer ile bosluk olusturmak
                .frame(width: 10)
                .background(.white)
            
        }
        .background(.orange)
        .padding(.horizontal,200)
    }
}

#Preview {
    ContentView()
}
