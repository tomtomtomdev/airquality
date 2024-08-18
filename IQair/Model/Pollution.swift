//
//  Pollution.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Foundation

struct Pollution: Codable {
    let ts: String
    let aqius: Int
    let mainus: Int
    let aqicn: Int
    let maincn: Int
    let pl: Pl
}
