//
//  ContentView.swift
//  datepickerBootcamp
//
//  Created by Hasan on 7.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var selectedDate: Date = Date()
    
    var startingDate : Date = Calendar.current.date(from: <#T##DateComponents#>(year:2000)) ?? Date()//başlangiç yılını sectik burayı tam olarak anlamadım
    
    var endingDate : Date = Date()
    
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            
            DatePicker(selection: $selectedDate,
                       displayedComponents: [.date,.hourAndMinute]//sadece tarih gözüksün istedik ve sonradan saatide ekledik
            
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
#Preview {
    ContentView()
}
