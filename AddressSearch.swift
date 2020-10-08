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
//    @State var results = [Address]()
    
    init() {
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            navBarAppearance.backgroundColor = UIColor(red: 58/255, green: 91/255, blue: 120/255, alpha: 1)
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        }
    }
    
//    struct Response: Codable {
//        var results:[Address]
//    }
//    
//    struct Result: Codable {
//        var bbrId: String
//        var status: Int
//        var darstatus: Int
//        var vejkode: Int
//        var vejnavn: String
//        var adresseringsvejnavn: String
//        var husnr: String
//        var etage: String
//        var dør: String
//        var supplerendebynavn: String
//        var postnr: Int
//        var postnrnavn: String
//        var stormodtagerpostnr: Int
//        var stormodtagerpostnrnavn: String
//        var kommunekode: Int
//        var adgangsadresseid: String
//        var x: Double
//        var y: Double
//        var href: String
//        var tekst: String
//    }
    
   
    
    //Nikolaj var her #sejtnok #velbekommen #jonasskider
    
    var body: some View {
//        List(results, id:\.bbrId){ item in
//            VStack{
//                Text(item.bbrId)
//                    .font(.headline)
//            
//                Text(item.vejnavn)
//            }
//        }
//        .onAppear(perform: loadData)
        
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
                                    .foregroundColor(.accentColor)
                            }
                        }
                        .navigationBarTitle("Anlægsportal", displayMode: .inline)
                    }
                    //                    .padding(.top, 80)
                    .border(Color.white.opacity(0.2))
                    .shadow(radius: 100)
                    .foregroundColor(.white)


                    
                }
                .padding(.top, 50)
                Spacer()
                Text("Vælg adresse via kort:")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                MapView()
                    .frame(height: 280)

                
            }
            .background(RadialGradient(gradient: Gradient(colors: [Color(red: 58/255, green: 91/255, blue: 120/255).opacity(0.6), Color(red: 58/255, green: 91/255, blue: 120/255)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))
            
//            func loadData() {
//                guard let url = URL(string: "https://lekondbrest.azurewebsites.net/api/installations")
//                else {
//                    print("invalid URL")
//                    return
//                }
//                let request = URLRequest(url: url)
//                
//                URLSession.shared.dataTask(with: request) { data, response, error in if let data = data {
//                    if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
//                        DispatchQueue.main.async {
//                            self.results = decodedResponse.results
//                        }
//                        return
//                    }
//                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
//                }}.resume()
//            }
        }
        }
    
    struct AddressSearch_Previews: PreviewProvider {
        static var previews: some View {
            AddressSearch()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
