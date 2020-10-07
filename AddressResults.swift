//
//  AddressResults.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 01/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct AddressResults: View {
    @Binding var address: String
    
    
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                VStack(alignment: .leading){
                    
                    if (self.address == "")
                    {
                        Text("Adresse: \nPenselstrøget 30, 4000 Roskilde")   .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)  .foregroundColor(.white)
                            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .leading)
                    }
                    else{
                    Text("Adresse: \n\(address)")   .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)  .foregroundColor(.white)
                        .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: 200, idealHeight: 200, maxHeight: 200, alignment: .leading)
                }
                }
                
                Spacer()
                    .multilineTextAlignment(.leading)
            }
            
            .background(Color.black.opacity(0.3).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
            AnlaegsportalView()
            
            
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
        AddressResults(address: .constant("adresse eksempel"))
    }
}
