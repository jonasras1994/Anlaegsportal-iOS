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
    
    var body: some View {

        NavigationView{
        VStack{
            
            List(results, id:\.installationId){ item in
                NavigationLink(destination: SlidingTabMenuView()) {
                VStack(alignment: .leading){
                    HStack{
                        Text("Navn:")
                            .font(.headline)
                        Text(item.model)
                    }
                    HStack{
                        Text("Ansvarlig:")
                            .font(.headline)
                        Text(item.responsible)
                    }
                    HStack{
                        Text("Dato for næste eftersyn:")
                            .font(.headline)
                        Text(item.lastReview)
                    }
                    
                }
                .foregroundColor(.white)
//                .background(Color.black.opacity(0.1))
                .shadow(radius: 50)
                
            }
            }
        }
        .onAppear(perform: loadData)

            //        }
            //
            //            NavigationLink(destination: SlidingTabMenuView()) {
            //                VStack(alignment: .leading){
            //
            //                    HStack{
            //                        Image("Dykkerflaske")
            //                            .resizable()
            //                            .scaledToFit()
            //                            .frame(width: 40, height: 60, alignment: .leading)
            //                        VStack(alignment: .leading){
            //                            HStack{
            //
            //                                Text("Navn:")
            //                                    .bold()
            //                                Text("Carbondive 300")
            //                            }
            //                            HStack{
            //                                Text("Ansvarlig:")
            //                                    .bold()
            //                                Text("B-Tech")
            //                            }
            //                            HStack{
            //                                Text("Dato for næste syn:")
            //                                    .bold()
            //                                Text("11/9-2020")
            //                            }
            //                        }
            //                    }
            //                }
            //            }
            //            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
            //            .border(Color.gray.opacity(0.1), width: 1)
            //            .foregroundColor(.white)
            //            .background(Color.black.opacity(0.1))
            //            .shadow(radius: 50)
            //
            //        }
            //        .foregroundColor(Color.black.opacity(0.8))
            //        .position(x: 190, y: 170)
            
        }
        .background(RadialGradient(gradient: Gradient(colors: [Color(red: 58/255, green: 91/255, blue: 120/255).opacity(0.6), Color(red: 58/255, green: 91/255, blue: 120/255)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: 300))

        
    }
    func loadData() {
        let url = URL(string: "https://lekondbrest.azurewebsites.net/api/installations/")!
        
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let d = data {
                let decodedResponse = try? JSONDecoder().decode([Installation].self, from: d)
                DispatchQueue.main.async {
                    self.results = decodedResponse!
                    print (decodedResponse!)
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
