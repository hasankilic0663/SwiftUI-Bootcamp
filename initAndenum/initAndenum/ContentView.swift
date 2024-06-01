//
//  ContentView.swift
//  initAndenum
//
//  Created by Hasan on 2.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Home(location: "Ankara", squareMeter: 100, hasBalcony: true)//Sınıfı cagırdık ve geldi
                .frame(width: 150,height: 150)
                .background(.orange)
            Home(location: "İstanbul", squareMeter: 150, hasBalcony: false)//Sınıfı cagırdık ve geldi
                .frame(width: 150,height: 150)
                .background(.red)
        }
        .padding()
    }
}

struct Home:View {
    
    var location:String
    var squareMeter:Int
    var hasBalcony:Bool
    var hometype:HomeType//hometypeden geldiğni
    
    init(location: String, squareMeter: Int, hasBalcony: Bool,hometype:HomeType) {
        self.location = location
        self.squareMeter = squareMeter
        self.hasBalcony = hasBalcony
        self.hometype=hometype
    }
    
    var body: some View {
        VStack{
            Text("Konum: \(location)")
            Text("Büyüklük: \(squareMeter) m2")
            
            if hasBalcony == true {
                Text("Balkonlu")
            }
            else{
                Text("Balkonsuz ")
            }
            
            if hometype==.apartman{
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
enum HomeType{
    case Mustakil
    case apartman
    case rezidans
}
