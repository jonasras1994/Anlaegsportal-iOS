//
//  SlidingTabViewTest.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 06/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI
import SlidingTabView

//struct SlidingTabViewTest: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

struct SlidingTabMenuView : View {
    @State private var selectedTabIndex = 0
    
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("Dykkerflaske")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Navn:")
                            .bold()
                        Text("Carbondive 300")
                    }
                    HStack{
                        Text("Ansvarlig:")
                            .bold()
                        Text("B-Tech")
                    }
                    HStack{
                        Text("Dato for næste syn:")
                            .bold()
                        Text("11/9-2020")
                        
                    }
                }
                Spacer()
            }
            .padding(.top, 10)
            .padding(.bottom, 10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.black.opacity(0.7)]), startPoint: .leading, endPoint: .trailing))
            
            VStack(alignment: .leading) {
                SlidingTabView(selection: self.$selectedTabIndex,
                               tabs: ["Info", "Eftersyn", "Dokumenter"],
                               font: .body,
                               activeAccentColor: Color.blue,
                               selectionBarColor: Color.blue)
                if selectedTabIndex == 0{
                    Info()
                }
                else if selectedTabIndex == 1{
                    Eftersyn()
                }
                else{
                    Documents()
                }
                Spacer()
            }
            //        .padding(.top, 50)
            .animation(.none)
        }
    }
}
//@available(iOS 13.0.0, *)
//struct SlidingTabView_Previews : PreviewProvider {
//    static var previews: some View {
//        SlidingTabConsumerView()
//    }
//}

struct SlidingTabMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SlidingTabMenuView()
    }
}
