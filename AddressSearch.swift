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
    @State var results = [Address]()
    @State var navigate = false
    
    
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
        
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    
    //Nikolaj var her #sejtnok #velbekommen #jonasskider
    
    var body: some View {
        let addressValueBinding = Binding<String>(get: {
            self.address
        }, set: {
            self.address = $0
            self.loadData()
        })
        NavigationView {
            
            VStack{
                VStack(alignment: .center){
                    
                    VStack{
                        Text("Indtast adresse:")
                        TextField("Adresse...", text: addressValueBinding)
                            .multilineTextAlignment(.center)
                            
                            
                            .navigationBarTitle("Anlægsportal", displayMode: .inline)
                    }
                    //                    .padding(.top, 80)
//                    .border(Color.white.opacity(0.2))
                    .foregroundColor(.white)
                        NavigationLink(destination: AddressResultsView(address: self.$address), isActive: $navigate) {
                            EmptyView()
                        }
                        List {ForEach (results, id:\.adresse.id) { item in
                            //                                NavigationLink(destination: AddressResultsView(address: self.$address)) {
                            //                                    VStack{
                            //                                        Text(item.tekst)
                            //                                            .foregroundColor(.white)
                            //                                    }
                            //                                    .onTapGesture{self.address = item.tekst}
                            
                            
                            //                                }
                            
                            Button(action: {
                                self.address = item.tekst
                                self.navigate = true
                            }){
                                Text(item.tekst)
                            }
                            .foregroundColor(.white)
                            
                        }
                        
                        .listRowBackground(Color.clear)
                        
                        }
                }
                .padding(.top, 50)
                Spacer()
                Text("Vælg adresse via kort:")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                MapView()
                    .frame(height: 280)
                
                
            }
            //            .onAppear(perform: loadData)
            .background(RadialGradient(gradient: Gradient(colors: [Color(red: 58/255, green: 91/255, blue: 120/255).opacity(0.6), Color(red: 58/255, green: 91/255, blue: 120/255)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))
        }
    }
    func loadData() {
        
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "dawa.aws.dk"
        urlComponents.path = "/adresser/autocomplete"
        urlComponents.queryItems = [
            URLQueryItem(name: "q", value: address),
            URLQueryItem(name: "fuzzy", value: "true")
        ]
        
        //        let url = URL(string: "https://dawa.aws.dk/adresser/autocomplete?q=" + address + "&fuzzy=")!
        
        URLSession.shared.dataTask(with: urlComponents.url!) { (data, response, error) in
            if let d = data {
                let decodedResponse = try? JSONDecoder().decode([Address].self, from: d)
                DispatchQueue.main.async {
                    print (decodedResponse!)
                    
                    self.results = decodedResponse!
                }
                return
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
            print(error)
        }.resume()
    }
    
    
    struct AddressSearch_Previews: PreviewProvider {
        static var previews: some View {
            AddressSearch()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
