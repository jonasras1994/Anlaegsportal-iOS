//
//  General.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 05/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI
import SlidingTabView


struct Info: View {
    @State private var selectedTabIndex = 0
    @State var results = [Installation]()
    var installationId: Int
    
    init(installationId: Int) {
        self.installationId = installationId
        
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack{
                List {ForEach (results, id:\.installationId) { installation in
                    
                    VStack(alignment: .leading){
                        //                        GeneralView(installation: installation)
                        HStack{
                            
                            HStack{
                                Text("Navn: \nProdukt type: \nProdukt mærke: \nPris: \nUdløb af garanti: \nAnsvarlig: \nKommentarer: \nRegistreringsdato: \nInstallationsdato: \nSidste eftersyn: \nFrekvens for eftersyn: \nCheckliste: \nAdresse: \nQR-ID:")
                                    .font(.headline)
                                Text(installation.myconcatenate())

                            }
                            .lineSpacing(10.0)

                            
                        }
                        .listRowBackground(Color.clear)
                        .foregroundColor(.white)
                    }
                    .id(UUID())
                    .listRowBackground(Color.clear)

                }

                }
                .onAppear(perform: loadData)
                .navigationBarTitle("Info", displayMode: .inline)
                .frame(minWidth: 300, idealWidth: 400, maxWidth: 400, alignment: .leading)


            }
        }
    }
    
    
    
    func loadData() {
        self.results = [Installation]()
        let url = URL(string: "https://lekondbrest.azurewebsites.net/api/installations/" + String(self.installationId))!
        
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let d = data {
                print(data)
                let decodedResponse = try? JSONDecoder().decode(Installation.self, from: d)
                DispatchQueue.main.async {
                    print (decodedResponse!)
                    
                    self.results.append(decodedResponse!)
                }
                return
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
            print(error)
        }.resume()
    }
    
    
    
    //@available(iOS 13.0.0, *)
    struct SlidingTabView_Previews : PreviewProvider {
        static var previews: some View {
            Info(installationId: 1234)
        }
    }
}
