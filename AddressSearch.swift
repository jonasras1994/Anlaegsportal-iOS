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
    
    init() {
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
            navBarAppearance.backgroundColor = UIColor(red: 58/255, green: 91/255, blue: 120/255, alpha: 1)
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        }
    }
    
    //Nikolaj var her #sejtnok #velbekommen #jonasskider
    
    var body: some View {
        NavigationView {
            
            VStack{
                VStack(alignment: .center, spacing: 80){
                    
                    Image("logo-3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                    
                    VStack{
                        Text("Indtast adresse:")
                        TextField("Adresse...", text: $address)
                            .multilineTextAlignment(.center)
                        
                        
                        NavigationLink(destination: AddressResultsView(address: self.$address)) {
                            VStack{
                                Text ("Søg")
                            }
                        }
                        .navigationBarTitle("Anlægsportal", displayMode: .inline)
                    }
                    //                    .padding(.top, 80)
                    .border(Color.black.opacity(0.1))
                    
                }
                .padding(.top, 50)
                Spacer()
                
            }
            .background(RadialGradient(gradient: Gradient(colors: [Color(red: 58/255, green: 91/255, blue: 120/255).opacity(0.6), Color(red: 58/255, green: 91/255, blue: 120/255)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))
            
        }
        
        
    }
    
    struct AddressSearch_Previews: PreviewProvider {
        static var previews: some View {
            AddressSearch()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
