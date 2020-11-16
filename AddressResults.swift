//
//  AnlaegsportalView.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 05/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct AddressResults: View {
    @State var results = [Installation]()
    //    @State var installationId = 1234
    @State var bbrId = ""
    
    init() {
        UITableView.appearance().separatorColor = .white
        UITableView.appearance().separatorStyle = .singleLine
        
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        
    }
    
    var body: some View {
        
        VStack{
            VStack{
                List {ForEach (results, id:\.installationId) { item in
                    NavigationLink(destination: SlidingTabMenuView(installationId: item.installationId)) {
                        VStack(alignment: .leading){
                            HStack{
                                Text("Name:")
                                    .font(.headline)
                                Text(item.model)
                            }
                            HStack{
                                Text("Responsible:")
                                    .font(.headline)
                                Text(item.responsible)
                            }
                            HStack{
                                Text("Due date for next review:")
                                    .font(.headline)
                                Text(item.lastReview)
                            }
                        }
                    }
                    .edgesIgnoringSafeArea(.bottom)

                    VStack{
                        Color.white.frame(height: CGFloat(3) / UIScreen.main.scale)
                    }
                    .edgesIgnoringSafeArea(.bottom)

                }
                .listRowBackground(Color.clear)
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(.bottom)

                }
                .edgesIgnoringSafeArea(.bottom)

            }
            .onAppear(perform: loadData)
            .edgesIgnoringSafeArea(.bottom)

        }
        .edgesIgnoringSafeArea(.bottom)

    }
    func loadData() {
        let url = URL(string: "https://lekondbrest.azurewebsites.net/api/installations/")!
        
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let d = data {
                let decodedResponse = try? JSONDecoder().decode([Installation].self, from: d)
                DispatchQueue.main.async {
                    self.results = decodedResponse!
//                    print (decodedResponse!)
                }
                return
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
            print(error)
        }.resume()
    }
    
    
    struct AnlaegsportalView_Previews: PreviewProvider {
        static var previews: some View {
            AddressResults()
        }
    }
}
