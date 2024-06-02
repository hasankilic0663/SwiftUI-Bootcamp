//
//  ContentView.swift
//  foreachBootcamp
//
//  Created by Hasan on 2.06.2024.
//


import SwiftUI

struct Book:Identifiable{
    let id=UUID()//bensersiz id tanıma
    let title:String
    let author:String
    let publisDate:String
}

struct ContentView: View {
    
    //let benimDizim=["öge1","öge2","öge3","öge4","öge5","öge6"]
    
    let books=[
         Book(title: "SwiftUI öğreniyorum", author: "Hasan", publisDate: "2 Haziran 2024"),
         Book(title: "Kotlin öğrencem", author: "Hasan", publisDate: "3 Haziran 2024")
    ]
    
    var body: some View {
        
        
        
        List{
            ForEach(books) { book in
                HStack{
                    Image(systemName: "xmark")
                    VStack(alignment:.leading){
                        Text(book.title)
                            .font(.headline)
                        Text(book.author)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text(book.publisDate)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        
        //List{
//            ForEach(benimDizim, id: \.self){metin in
//                Text(metin)
//
//            }
       // }
      
        
//        VStack {
////            ForEach(dizi,id: \.self){item in// item diizinin icerisindeki herbir öge
////
////            }//bu dizide kednisiz bir id olacak
   }
}

#Preview {
    ContentView()
}
