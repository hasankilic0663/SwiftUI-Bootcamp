//
//  ContentView.swift
//  PaddingBootcamp
//
//  Created by Hasan on 30.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//       Text("Merhaba Hasan! ")
//            //.frame(width: 200,height: 200)
//           // .padding(.bottom,20)//sadece alttan 20 birim cerceve yapacaktı
//            .padding(.all,20)
//           // .padding(.leading,50)
//            //.padding(.top,20)
//           // .padding(.trailing,20)
////            .padding(.bottom,20)
//            .padding(.vertical,20)//üstten ve alttan bosluk bırakma
//            .padding(.horizontal,50)//sagdan ve soldan bosluk
//
//            .background(.red)
//            -----------------------------------------------------------
        
//        Text("Hi Hasan!")
//            .font(.largeTitle)
//            .fontWeight(.bold)//yazıyı bold yanı kalın yapmak
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)//sagdan soldan sıırsız renk ve sola yasladı
//            .padding(.leading,20)//soldan 20 lik bosluk bıraktı
//            .background(.red)
//            .foregroundColor(.white)
//           --------------------------------------------------------------
        VStack(alignment: .leading){
            Text("Selam Hasan !")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom,20)//burada baslık ıle alt acıklama arasındakı boslugu belırledık
            Text("Bugünde çok formundasın Bugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasınBugünde çok formundasın")
            
        }
        .padding()
        .padding(.vertical,10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x: 0,y: 10.0)
        )
        .padding()
//        .background(.red)
        .padding(.horizontal,10)
        
        
//
    }
}

#Preview {
    ContentView()
}
