//
//  AddressSearch.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 06/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct AddressSearch: View {
    @State var address: String = ""
    var body: some View {
        NavigationView {
            VStack(){
                
                
                //                Text("Adresse: \n\(user.address)")
                //                    .multilineTextAlignment(.leading)
                //                    .background(SwiftUI.Color.pink)
                
                Text("Address:")
                    .multilineTextAlignment(.leading)
                TextField("Enter address...", text: $address)
                
                
                NavigationLink(destination: AddressResults(address: self.$address)) {
                    Text ("Søg")
                        .multilineTextAlignment(.leading)
                }
                .navigationBarTitle("Address Search", displayMode: .inline)
            }
        }
    }
    
    struct AddressSearch_Previews: PreviewProvider {
        static var previews: some View {
            AddressSearch()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
