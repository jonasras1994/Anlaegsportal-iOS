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

struct SlidingTabViewTest : View {
    @State private var selectedTabIndex = 0

    
    var body: some View {
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
    }
}

//@available(iOS 13.0.0, *)
//struct SlidingTabView_Previews : PreviewProvider {
//    static var previews: some View {
//        SlidingTabConsumerView()
//    }
//}

struct SlidingTabViewTest_Previews: PreviewProvider {
    static var previews: some View {
        SlidingTabViewTest()
    }
}
