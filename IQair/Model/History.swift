//
//  History.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Foundation

struct History: Codable {
    let weather: [Weather]
    let pollution: [Pollution]
}
