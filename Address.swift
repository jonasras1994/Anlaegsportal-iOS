//
//  Address.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 01/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI

struct Address: Codable {
    let tekst: String!
    let adresse: Adresse!
}

// MARK: - Adresse
struct Adresse: Codable {
    let id: String!
    let status, darstatus: Int!
    let vejkode, vejnavn, adresseringsvejnavn, husnr: String!
    let etage, dør: String!
    let supplerendebynavn: String!
    let postnr, postnrnavn: String!
    let stormodtagerpostnr, stormodtagerpostnrnavn: String!
    let kommunekode, adgangsadresseid: String!
    let x, y: Double!
    let href: String!
}

