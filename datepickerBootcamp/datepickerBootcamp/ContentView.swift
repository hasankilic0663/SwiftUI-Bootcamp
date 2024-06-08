//
//  ContentView.swift
//  datepickerBootcamp
//
//  Created by Hasan on 7.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var selectedDate: Date = Date()
    
    var startingDate : Date = Calendar.current.date(from: DateComponents(year:2000)) ?? Date()//başlangiç yılını sectik burayı tam olarak anlamadım
    
    var endingDate : Date = Date()// suanın tarihini son verdki
    
    var dateFormatter: DateFormatter{
        let formetter = DateFormatter()
        formetter.dateStyle = .short// ustte text kısmına sadece tarihi vericek gunayyıl
        formetter.timeStyle = .medium//saat saniye dakikda gosteriyo medıum short long bunları acıyo
        return formetter
    }
    
    
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            List{
                Text(dateFormatter.string(from: selectedDate))//tarihi görücez
                
                
                DatePicker(selection: $selectedDate,//starting ending date burda veriyoz
                           in : startingDate...endingDate, displayedComponents: [.date,.hourAndMinute]
                
                ) {
                    Text("Abone Olduğun tarih")
                        
                        .font(.headline)
                        
                }
                .datePickerStyle(
                   CompactDatePickerStyle()// gorunumlerinden biri
                    
                 //   GraphicalDatePickerStyle()// tamboy bir takvime dönüştü
                    
                //    WheelDatePickerStyle()//burdada suruklemelı tarih lastık gibi dönen
                )
                .tint(.black)//secilen yuvarlagın rengini siyah yaptı
                .padding()
            }
                
           
            
        }
    }
}
#Preview {
    ContentView()
}
