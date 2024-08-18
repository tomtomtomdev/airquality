//
//  AirQuality.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Foundation

struct AirQuality: Codable {
    let city: String
    let state: String
    let country: String
    let location: Location
    let forecasts: [Forecast]
    let current: Current
    let history: History
    let units: Unit
}
