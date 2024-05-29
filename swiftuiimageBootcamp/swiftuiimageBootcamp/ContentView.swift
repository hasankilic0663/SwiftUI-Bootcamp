//
//  ContentView.swift
//  swiftuiimageBootcamp
//
//  Created by Hasan on 28.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//       Image("swift")//swift resmini getirdi
//            .resizable()
//            .scaledToFit()
//            
////            .resizable()//tasmayı engelliyo
////            .scaledToFit()//orjinal tasmadan yapıyo
////            .cornerRadius(20)//koselerı ovallestırme
////            .clipShape(RoundedRectangle(cornerRadius: 333))//sekil verme. sekle benzetme
//            .frame(width: 300,height: 200)
        
        AsyncImage(url: URL(string: "https://developer.apple.com/swift/images/swift-og.png")){image in image
                .image?.resizable()//parantez içine acarak yazabiliyoruz.
                .scaledToFill()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(radius: 45)
        }
        
        .frame(width: 200 , height: 200)
            
        
    }
}

#Preview {
    ContentView()
}
