//
//  ContentView.swift
//  ListeBootcamp
//
//  Created by Hasan on 4.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var  fruits : [String] = ["apple", "banana","orange"]
    var body: some View {
        NavigationStack{
            List{
                Section{
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)//capitalized ile baş harflerini büyük yaptı
                    }
                    .onDelete(perform: delete)//delete fonksiyonunu buraya verdik ve oto olarak index seti gönderiyo
//                    .onMove(perform: { indexSet, newOffset in
//
//                    })// yani buranın amacı yer değğiştrimek kendi arasında
                    .onMove(perform: move)//asagıdakı fonksıyonu cagırdık
                    
                    
                }  header: {
                    Text("Fruits")//section ile başlık yapma
                }
            }
            .navigationTitle("Home")
            .toolbar(content: {
                ToolbarItem( placement: ToolbarItemPlacement.topBarLeading,content: {
                    EditButton()//sol ustte edıt buttonu getirdi
                    
                })
                ToolbarItem( placement: ToolbarItemPlacement.topBarTrailing) {// toolbar ile barın sag ust kosesıne button ekledık ve butonada asagıda aksıyon ekleyerek fonksıyondan add funcını cagırdık.
                    Button("Add") {
                       add()
                    }
                    
                    
                }
            })
            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
        }
    }
    
    
    func delete(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)//hangisi seçildiyse fruit listesinde kaldırıyo seçip
    }
    func move(indexSet: IndexSet , newOffSet : Int){
        fruits.move(fromOffsets: indexSet, toOffset: newOffSet)//nerden nereye olacagı
        
    }
    func add(){
        fruits.append("Strawberry")//ekledik
    }
    
}
    

#Preview {
    ContentView()
}
