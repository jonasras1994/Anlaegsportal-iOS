//
//  Documents.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 07/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct Documents: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "doc.text")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Title:")
                            .bold()
                        Text("Pressure check")
                    }
                    HStack{
                        Text("Responsible:")
                            .bold()
                        Text("B-Tech")
                    }
                    HStack{
                        Text("Date:")
                            .bold()
                        Text("11/9-2020")
                    }
                }
                Spacer()
            }
            HStack{
                Image(systemName: "doc.text")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Title:")
                            .bold()
                        Text("Pressure check")
                    }
                    HStack{
                        Text("Responsible:")
                            .bold()
                        Text("B-Tech")
                    }
                    HStack{
                        Text("Date:")
                            .bold()
                        Text("14/9-2018")
                    }
                }
                Spacer()
            }
            HStack{
                Image(systemName: "doc.text")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Title:")
                            .bold()
                        Text("Pressure check")
                    }
                    HStack{
                        Text("Responsible:")
                            .bold()
                        Text("Carsten Aps")
                    }
                    HStack{
                        Text("Date:")
                            .bold()
                        Text("3/9-2016")
                    }
                }
                Spacer()
            }
            HStack{
                Image(systemName: "doc.text")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Title:")
                            .bold()
                        Text("Pressure check")
                    }
                    HStack{
                        Text("Responsible:")
                            .bold()
                        Text("Trykprøver ApS")
                    }
                    HStack{
                        Text("Date:")
                            .bold()
                        Text("15/9-2014")
                    }
                }
                Spacer()
            }
            HStack{
                Image(systemName: "doc.text")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Title:")
                            .bold()
                        Text("Pressure Check")
                    }
                    HStack{
                        Text("Responsible:")
                            .bold()
                        Text("Giant Cooperation A/S")
                    }
                    HStack{
                        Text("Date:")
                            .bold()
                        Text("8/9-2012")
                    }
                }
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}

struct Documents_Previews: PreviewProvider {
    static var previews: some View {
        Documents()
    }
}
