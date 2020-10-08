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
            .border(Color.gray.opacity(0.1), width: 1)
            .foregroundColor(.white)
            .background(Color.black.opacity(0.1))
            .shadow(radius: 50)
            
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
                    Review()
                }
                else{
                    Documents()
                }
                Spacer()
            }
            .animation(.none)
            .background(RadialGradient(gradient: Gradient(colors: [Color(red: 58/255, green: 91/255, blue: 120/255).opacity(0.6), Color(red: 58/255, green: 91/255, blue: 120/255)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))
            .foregroundColor(.white)
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color(red: 58/255, green: 91/255, blue: 120/255).opacity(0.6), Color(red: 58/255, green: 91/255, blue: 120/255)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))
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
