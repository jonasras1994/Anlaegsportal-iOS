//
//  AddressResults.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 01/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct AddressResultsView: View {
    @Binding var address: String
    
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                VStack(alignment: .leading){
                    
                    if (self.address == "")
                    {
                        Text("Adresse: \nPenselstrøget 30, 4000 Roskilde")   .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)  .foregroundColor(.black)
                            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .leading)
                    }
                    else{
                        Text("Adresse: \n\(address)")   .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)  .foregroundColor(Color.black.opacity(0.8))
                            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .leading)
                    }
                }
                
                Spacer()
                    .multilineTextAlignment(.leading)
            }
            
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.black.opacity(0.7)]), startPoint: .leading, endPoint: .trailing))
            
            AddressResults()
                .navigationBarTitle("Address Results", displayMode: .inline)
        }
    }
}
//struct AddressResultsView: View {
//    @EnvironmentObject var user: User
//    @EnvironmentObject var address: Address
//
//
////    var body: some View {
////        VStack {
////            Text("Address: \(address)")
//////            Button("Increase") {
//////                self.user.score += 1
//////           }
////                .environmentObject(self.address)
////        }
////    }
////}



struct AddressResults_Previews: PreviewProvider {
    static var previews: some View {
        AddressResultsView(address: .constant("adresse eksempel"))
    }
}
