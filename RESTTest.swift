//
//  RESTTest.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 08/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI


struct RESTTest: View {

    @State var results = [Installation]()




    var body: some View {

        VStack{


        List(results, id:\.installationId){ item in
            VStack(alignment: .leading){
                Text("Navn:")
                    .font(.headline)
                Text(item.model)

                Text("Ansvarlig:")
                    .font(.headline)
                Text(item.responsible)

                Text("Dato for næste eftersyn:")
                    .font(.headline)
                Text(item.lastReview)

            }

        }
        .onAppear(perform: loadData)
    }
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


struct RESTTest_Previews: PreviewProvider {
    static var previews: some View {
        RESTTest()
    }
}
}
