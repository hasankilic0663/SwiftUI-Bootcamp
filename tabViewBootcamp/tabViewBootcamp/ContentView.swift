//
//  ContentView.swift
//  tabViewBootcamp
//
//  Created by Hasan on 9.06.2024.
//

import SwiftUI
//birden cok  gorunum altgecıs yapan gorunum
struct ContentView: View {
    
    @State var selectedTab : Int = 0
    var body: some View {
        
        TabView{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.red)
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.yellow)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .frame(height: 300)
        .padding()
        .tabViewStyle(PageTabViewStyle())//slider görünümü yaptı . yani resimde kaydırma gibi bişey
        
        
        
        
        //_--------------------------------------------------------------------
        
//        TabView(selection: $selectedTab) {
//                AboneOlView(selectedTab2: $selectedTab)
//                    .tabItem {
//                        Image(systemName: "house.fill")
//                        Text("Abone Ol")
//                    }
//                    .tag(0)
//                Text("Videoyu Beğen")
//                    .tabItem {
//                        Image(systemName:   "globe")
//                        Text("Beğen")
//                    }
//                    .tag(1)
//                Text("Yorum Yap")
//                    .tabItem {
//                        Image(systemName: "person.fill")
//                        Text("Yorum")
//                    }
//                    .tag(2)//tagların amacı id belirtmek gibi bişey
//            }
//        
//        .padding()
    }
}

#Preview {
    ContentView()
}

//struct AboneOlView: View {
//    
//    @Binding var selectedTab2: Int
//    
//    var body: some View {
//        ZStack {
//            Color.red
//                .ignoresSafeArea(.all)
//            
//            VStack{
//                Text("Abone Ol")
//                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                    .foregroundStyle(.white)
//                Button {
//                    selectedTab2 = 2 // 2 numaralı yorum sayfasına butonuna tıklayarak orası acılırç
//                } label: {
//                    Text("Yorum yap sayfasına git")
//                        .foregroundStyle(.white)
//                        .padding()
//                        .background(.black)
//                        .cornerRadius(10)
//                }
//            }
//           
//
//        }
//    }
//}
