//
//  Review.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 07/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct Review: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "text.badge.checkmark")
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
        .foregroundColor(.white)
    }
}

struct Eftersyn_Previews: PreviewProvider {
    static var previews: some View {
        Review()
    }
}
