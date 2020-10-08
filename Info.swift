//
//  General.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 05/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI
import SlidingTabView


struct Info: View {
    @State private var selectedTabIndex = 0
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            ScrollView(.vertical){
                
                VStack(alignment: .leading, spacing: 20){
                    
                    VStack(alignment: .leading){
                        Text("Navn:").bold()
                        Text("Carbondive 300")
                    }
                    VStack(alignment: .leading){
                        Text("Produkttype:").bold()
                        Text("Dykkerflaske")
                    }
                    VStack(alignment: .leading){
                        Text("Producent:").bold()
                        Text("Worthington Industries")
                    }
                    VStack(alignment: .leading){
                        Text("Adresse:").bold()
                        Text("Penselstrøget 30, 4000 Roskilde")
                    }
                    VStack(alignment: .leading){
                        Text("Ejer:").bold()
                        Text("Anders Nielsen")
                    }
                    VStack(alignment: .leading){
                        Text("QR-ID:").bold()
                        Text("A124578")
                    }
                    VStack(alignment: .leading){
                        Text("Dato for næste syn:").bold()
                        Text("11/9-2020")
                    }
                    VStack(alignment: .leading){
                        Text("Dato for installation:").bold()
                        Text("11/9-2018")
                    }
                    VStack(alignment: .leading){
                        Text("Dato for registrering:").bold()
                        Text("11/9-2018")
                    }
                    VStack(alignment: .leading){
                        Text("Frekvens for eftersyn:").bold()
                        Text("24 måneder")
                    }
                }
                .navigationBarTitle("Info", displayMode: .inline)
                .frame(minWidth: 300, idealWidth: 400, maxWidth: 400, alignment: .leading)
                .foregroundColor(.white)
                
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
        Info()
    }
}


struct General_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
