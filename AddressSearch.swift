//
//  AddressSearch.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 06/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI
import CodeScanner

struct AddressSearch: View {
    @State var address: String = ""
    @State var results = [Address]()
    @State var navigate = false
    @State var qrNavigate = false
    @State var installationId: Int = 1234
    @State private var isShowingScanner = false
    
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
                    NavigationLink(destination: SlidingTabMenuView(installationId: self.installationId), isActive: $qrNavigate){
                        EmptyView()
                    }
                    Button(action: {self.isShowingScanner = true}){
                        Text("QR Scanner")
                        Image(systemName: "qrcode.viewfinder")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 60, alignment: .leading)
                    }
                        .foregroundColor(Color.white)
                    .sheet(isPresented: $isShowingScanner){
                        CodeScannerView(codeTypes: [.qr], simulatedData: "A187300", completion: self.handleScan)
                    }
                    
                    VStack{
                        Text("Indtast adresse:")
                        TextField("Adresse...", text: addressValueBinding)
                            .multilineTextAlignment(.center)
                            
                            
                            .navigationBarTitle("Anlægsportal", displayMode: .inline)
                    }
                    //                    .padding(.top, 80)
//                    .border(Color.white.opacity(0.2))
                    .foregroundColor(.white)
//                    .sheet(isPresented: $isShowingScanner) {
//                        CodeScannerView(codeTypes: [.qr], simulatedData: "Paul Hudson\npaul@hackingwithswift.com", completion: self.handleScan)
//                    }
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
            .edgesIgnoringSafeArea(.bottom)
            
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
    
    func handleScan(result: Result<String, CodeScannerView.ScanError>) {
        self.isShowingScanner = false

        switch result {
        case .success(let code):
            print(code)
            loadQrData(qrId: code)
            self.qrNavigate = true
        case .failure(let error):
            print("Scanning failed")
        }
    }
    
    func loadQrData(qrId: String) {
        var results = [Installation]()
        let url = URL(string: "https://lekondbrest.azurewebsites.net/api/installations/search?qrid=" + qrId)!
        print(url)
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let d = data {
                print(response, data)
                let decodedResponse = try? JSONDecoder().decode([Installation].self, from: d)
                DispatchQueue.main.async {
                    print (decodedResponse!)
                    
                    results = decodedResponse!
                    self.installationId = results[0].installationId
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
