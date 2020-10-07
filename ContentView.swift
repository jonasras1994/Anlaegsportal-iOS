//
//  ContentView.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 28/09/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View	{
//        VStack {
//            Text("Address")
//                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//        }
//    }
//}

//class User: ObservableObject {
//    @Published var score = 0
//    //0 skal ændres til variablen *address*
//    var address = "Penselstrøget 30, 4000 Roskilde"
//}

//class Address: ObservableObject {
//    @Published var address = 0
//}

struct ContentView: View {
    //    @ObservedObject var user = User()
    @State var address: String = ""
    
    init() {
        
    }
    
    var body: some View {
//        NavigationView {
            VStack(){
                
                
                //                Text("Adresse: \n\(user.address)")
                //                    .multilineTextAlignment(.leading)
                //                    .background(SwiftUI.Color.pink)
                
//                Text("Address:")
//                    .multilineTextAlignment(.leading)
//                TextField("Enter address...", text: $address)
                
                
//                NavigationLink(destination: AddressResults(address: self.$address)) {
//                    Text ("Søg")
//                        .multilineTextAlignment(.leading)
//                }
         
                TabView{
                    AddressSearch()
                        .tabItem {
                            Image(systemName: "house")
                            Text("Anlægsportal")
                        }
                    Text("Udstyr")
                        .tabItem {
                            Image(systemName: "wrench")
                            Text("Udstyr")
                        }
                    Text("Medarbejdere")
                        .tabItem {
                            Image(systemName: "person")
                            Text("Medarbejdere")
                        }
                    Text("Dokumenter")
                        .tabItem {
                            Image(systemName: "doc.text")
                            Text("Dokumenter")
                        }
                    Text("Opgaver")
                        .tabItem {
                            Image(systemName: "list.bullet")
                            Text("Opgaver")
                        }
                    
                }

//                .background(RadialGradient(gradient: Gradient(colors: [Color.red.opacity(0.4), Color.blue.opacity(1)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/))
                .onAppear() {UITabBar.appearance().barTintColor = .some(UIColor(red:58/255, green: 91/255, blue: 120/255, alpha: 1.00))
                    UITabBar.appearance().tintColor = .white
                    UITabBar.appearance().unselectedItemTintColor = .white
//                .navigationBarTitle("Address Search", displayMode: .inline)
                //            .background(Color.pink)
                //            }
                //            .environmentObject(user)
            }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
