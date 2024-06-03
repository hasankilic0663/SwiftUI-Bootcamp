//
//  ContentView.swift
//  lazygridBootcamp
//
//  Created by Hasan on 3.06.2024.
//

import SwiftUI

struct ContentView: View {
    let columns:[GridItem]=[
        
        GridItem(.flexible(),spacing: nil,alignment: nil), GridItem(.flexible(),spacing: 1,alignment: nil), GridItem(.flexible(),spacing: 1,alignment: nil), GridItem(.flexible(),spacing: 1,alignment: nil), GridItem(.flexible(),spacing: 1,alignment: nil),// flexible ise ekledeıgımz kadar sutun olusturuyo ve genısık max
//        GridItem(.fixed(70),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(20),spacing: nil,alignment: nil),
//        GridItem(.fixed(60),spacing: nil,alignment: nil),// burası sutunların genişliğini veriyo fixed

    ]
    var body: some View {
        
        LazyVGrid(columns: columns) {
            
            ForEach(0..<50){ index in
                Rectangle()
                    .fill(.red)
                    .frame(height: 50)
                
            }
            
        }
//_--------------------------------------------------------------------
//        ScrollView{
//            LazyVStack{
//                ForEach(0..<100){index in
//                    ScrollView(.horizontal,showsIndicators: false,content: 
//                                {
//                                    LazyHStack{//lazy ekranda gosterılen kısmı ramde tutucak yanı recycle vıew ıle aynı sey :D ramden tasarruf saglanacak
//                                        ForEach(0..<50){anam in
//                                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                                                .fill(.white)
//                                                .frame(width: 200,height: 150)
//                                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                                                .padding()
//                                        }
//                                    }
//                                   
//                                    
//                                }
//                    )
//                    
//                    
//                }
//            }
//        }
        //------------------------------------------------------------
       
    }
}

#Preview {
    ContentView()
}
