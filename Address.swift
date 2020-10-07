//
//  Address.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 01/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct Address: Hashable, Codable {
    var bbrId: String
    var status: Int
    var darstatus: Int
    var vejkode: Int
    var vejnavn: String
    var adresseringsvejnavn: String
    var husnr: String
    var etage: String
    var dør: String
    var supplerendebynavn: String
    var postnr: Int
    var postnrnavn: String
    var stormodtagerpostnr: Int
    var stormodtagerpostnrnavn: String
    var kommunekode: Int
    var adgangsadresseid: String
    var x: Double
    var y: Double
    var href: String
    var tekst: String     
}

