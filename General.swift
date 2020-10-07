//
//  General.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 05/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI
import SlidingTabView


struct General: View {
    @State private var selectedTabIndex = 0

    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical){
                
                VStack(alignment: .leading) {
                    SlidingTabView(selection: self.$selectedTabIndex,
                                   tabs: ["First", "Second"],
                                   font: .body,
                                   activeAccentColor: Color.blue,
                                   selectionBarColor: Color.blue)
                    (selectedTabIndex == 0 ? Text("First View") : Text("Second View")).padding()
                    Spacer()
                }
                .padding(.top, 50)
                .animation(.none)
                
                VStack(spacing: 60){
                    
                    VStack(alignment: .leading){
                        Text("Navn:").bold()
                        Text("Carbondive 300")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("Produkttype:").bold()
                        Text("Dykkerflaske")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("Producent:").bold()
                        Text("Worthington Industries")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("Adresse:").bold()
                        Text("Penselstrøget 30, 4000 Roskilde")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("Ejer:").bold()
                        Text("Anders Nielsen")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("QR-ID:").bold()
                        Text("A124578")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("Dato for næste syn:").bold()
                        Text("11/9-2020")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("Dato for installation:").bold()
                        Text("11/9-2018")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("Dato for registrering:").bold()
                        Text("11/9-2018")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: 0, idealHeight: 10, maxHeight: 70, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        Text("Frekvens for eftersyn:").bold()
                        Text("24 måneder")
                    }
                    .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: 0, idealHeight: 10, maxHeight: 70, alignment: .leading)
                }
                .position(x: 190, y: 350)
                .navigationBarTitle("Info", displayMode: .inline)
                
                
                
            }
            
        }
    }
}

//struct SlidingTabConsumerView : View {
//    @State private var selectedTabIndex = 0
////    SlidingTabView(selection: $selectedTabIndex,tabs: ["First Tab", "Second Tab"]
//
//
//    var body: some View {
//        VStack(alignment: .leading) {
//            SlidingTabView(selection: self.$selectedTabIndex,
//                           tabs: ["First", "Second"],
//                           font: .body,
//                           activeAccentColor: Color.blue,
//                           selectionBarColor: Color.blue)
//            (selectedTabIndex == 0 ? Text("First View") : Text("Second View")).padding()
//            Spacer()
//        }
//        .padding(.top, 50)
//        .animation(.none)
//    }
//}
//@available(iOS 13.0.0, *)
struct SlidingTabView_Previews : PreviewProvider {
    static var previews: some View {
        General()
    }
}


struct General_Previews: PreviewProvider {
    static var previews: some View {
        General()
    }
}
