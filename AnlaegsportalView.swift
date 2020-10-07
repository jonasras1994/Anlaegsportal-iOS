//
//  AnlaegsportalView.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 05/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct AnlaegsportalView: View {
    var body: some View {
        VStack{
            NavigationLink(destination: General()) {
                VStack(alignment: .leading){
                    
                    HStack{
                        Image("Dykkerflaske")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 60, alignment: .leading)
                        VStack(alignment: .leading){
                            HStack{
                                
                                Text("Navn:")
                                    .bold()
                                Text("Carbondive 300")
                            }
                            HStack{
                                Text("Ansvarlig:")
                                    .bold()
                                Text("B-Tech")
                            }
                            HStack{
                                Text("Dato for næste syn:")
                                    .bold()
                                Text("11/9-2020")
                            }
                        }
                    }
                }
            }
            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
            .border(Color.gray, width: 1)
            .background(Color.black.opacity(0.05))

            
            NavigationLink(destination: General()) {
                
                HStack{
                    Image("Dykkerflaske")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 60, alignment: .leading)
                    VStack(alignment: .leading){
                        HStack{
                            Text("Navn:")
                                .bold()
                            Text("Carbondive 300")
                        }
                        HStack{
                            Text("Ansvarlig:")
                                .bold()
                            Text("B-Tech")
                        }
                        HStack{
                            Text("Dato for næste syn:")
                                .bold()
                            Text("11/9-2020")
                            
                        }
                    }
                }
            }
            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
            .border(Color.gray, width: 1)
            .background(Color.black.opacity(0.05))
            
            NavigationLink(destination: General()) {
                
                HStack{
                    Image("Dykkerflaske")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 60, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Navn:")
                                .bold()
                            Text("Carbondive 300")
                        }
                        HStack{
                            Text("Ansvarlig:")
                                .bold()
                            Text("B-Tech")
                        }
                        HStack{
                            Text("Dato for næste syn:")
                                .bold()
                            Text("11/9-2020")
                        }
                    }
                }
            }
            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
            .border(Color.gray, width: 1)
            .background(Color.black.opacity(0.05))
            
            NavigationLink(destination: General()) {
                
                HStack{
                    Image("Dykkerflaske")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 60, alignment: .leading)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("Navn:")
                                .bold()
                            Text("Carbondive 300")
                        }
                        HStack{
                            Text("Ansvarlig:")
                                .bold()
                            Text("B-Tech")
                        }
                        HStack{
                            Text("Dato for næste syn:")
                                .bold()
                            Text("11/9-2020")
                        }
                    }
                }
            }
            .frame(minWidth: 300, idealWidth: 400, maxWidth: 300, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 10, maxHeight: 70, alignment: .leading)
            .border(Color.gray, width: 1)
            .background(Color.black.opacity(0.05))

        }
        .foregroundColor(.black)
        .position(x: 190, y: 170)

    }
}


struct AnlaegsportalView_Previews: PreviewProvider {
    static var previews: some View {
        AnlaegsportalView()
    }
}