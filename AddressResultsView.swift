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
                        Text("Adresse: \nPenselstrøget 30, 4000 Roskilde")   .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)  .foregroundColor(.white)
                            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: .leading)
                    }
                    else{
                        Text("Adresse: \n\(address)")   .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)  .foregroundColor(Color.black.opacity(0.8))
                            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: 100, idealHeight: 100, maxHeight: 100, alignment: .leading)
                    }
                }
                
                Spacer()
                    .multilineTextAlignment(.leading)
            }
            
//            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0.7)]), startPoint: .leading, endPoint: .trailing))
            .shadow(radius: 50)
            
            AddressResults()
                .navigationBarTitle("Address Results", displayMode: .inline)
                .foregroundColor(.black)
                .background(RadialGradient(gradient: Gradient(colors: [Color(red: 58/255, green: 91/255, blue: 120/255).opacity(0.6), Color(red: 58/255, green: 91/255, blue: 120/255)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))

        }
        .background(RadialGradient(gradient: Gradient(colors: [Color(red: 58/255, green: 91/255, blue: 120/255).opacity(0.6), Color(red: 58/255, green: 91/255, blue: 120/255)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))
    }
}

struct AddressResults_Previews: PreviewProvider {
    static var previews: some View {
        AddressResultsView(address: .constant("adresse eksempel"))
    }
}
