//
//  Review.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 07/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct Eftersyn: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "text.badge.checkmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Titel:")
                            .bold()
                        Text("Test af tryk")
                    }
                    HStack{
                        Text("Ansvarlig:")
                            .bold()
                        Text("B-Tech")
                    }
                    HStack{
                        Text("Dato:")
                            .bold()
                        Text("11/9-2020")
                    }
                    HStack{
                        Text("Status:")
                            .bold()
                        Text("OK")
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.green)
                    }
                }
                Spacer()
            }
            HStack{
                Image(systemName: "text.badge.checkmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Titel:")
                            .bold()
                        Text("Test af tryk")
                    }
                    HStack{
                        Text("Ansvarlig:")
                            .bold()
                        Text("B-Tech")
                    }
                    HStack{
                        Text("Dato:")
                            .bold()
                        Text("14/9-2018")
                    }
                    HStack{
                        Text("Status:")
                            .bold()
                        Text("OK")
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.green)
                    }
                }
                Spacer()
            }
            HStack{
                Image(systemName: "text.badge.checkmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Titel:")
                            .bold()
                        Text("Test af tryk")
                    }
                    HStack{
                        Text("Ansvarlig:")
                            .bold()
                        Text("Carsten Aps")
                    }
                    HStack{
                        Text("Dato:")
                            .bold()
                        Text("3/9-2016")
                    }
                    HStack{
                        Text("Status:")
                            .bold()
                        Text("OK")
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.green)
                    }
                }
                Spacer()
            }
            HStack{
                Image(systemName: "text.badge.checkmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Titel:")
                            .bold()
                        Text("Test af tryk")
                    }
                    HStack{
                        Text("Ansvarlig:")
                            .bold()
                        Text("Trykprøver ApS")
                    }
                    HStack{
                        Text("Dato:")
                            .bold()
                        Text("15/9-2014")
                    }
                    HStack{
                        Text("Status:")
                            .bold()
                        Text("OK")
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.green)
                    }
                }
                Spacer()
            }
            HStack{
                Image(systemName: "text.badge.checkmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 60, alignment: .leading)
                VStack(alignment: .leading){
                    HStack{
                        Text("Titel:")
                            .bold()
                        Text("Test af tryk")
                    }
                    HStack{
                        Text("Ansvarlig:")
                            .bold()
                        Text("Giant Cooperation A/S")
                    }
                    HStack{
                        Text("Dato:")
                            .bold()
                        Text("8/9-2012")
                    }
                    HStack{
                        Text("Status:")
                            .bold()
                        Text("OK")
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.green)
                    }
                }
                Spacer()
            }
        }
    }
}

struct Eftersyn_Previews: PreviewProvider {
    static var previews: some View {
        Eftersyn()
    }
}
