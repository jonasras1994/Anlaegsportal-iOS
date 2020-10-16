//
//  Installations.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 08/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import Foundation

struct Installation: Hashable, Codable {
        var address : String!
        var bbrId : String!
        var checklistId : Int!
        var comment : String!
        var installationDate : String!
        var installationId : Int!
        var lastReview : String!
        var make : String!
        var model : String!
        var ownerId : Int!
        var price : Double!
        var productType : String!
        var qrId : String!
        var registrationDate : String!
        var responsible : String!
        var reviewFrequency : Int!
        var warrantyDate : String!
    
    init() {
    }
    
//    func toString() -> String {
//        return (model ,productType ,make ,price ,(warrantyDate) ,responsible ,comment ,registrationDate ,installationDate ,lastReview ,reviewFrequency ,checklistId ,address ,qrId)
//    }
    
    
    
    func myconcatenate() -> String {
        var myStrings: [String] = [model,  "\n" ,productType,  "\n" ,make,  "\n", String(price),  "\n" ,(warrantyDate),  "\n" ,responsible,  "\n" ,comment,  "\n" ,registrationDate,  "\n", installationDate,  "\n" ,lastReview,  "\n", String(reviewFrequency),  "\n", String(checklistId),  "\n", address,  "\n", qrId]
        var resultString = ""
//        ForEach(myStrings, id:\.self) {str in resultString += str}
        myStrings.forEach{str in
            resultString += str
        }
        return resultString
    }
}



struct Owner: Hashable, Codable {
    var ownerId: Int!
    var name: String!
    var email: String!
}
