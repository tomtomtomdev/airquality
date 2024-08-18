//
//  Response.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Foundation

struct AllAirQualityResponse: Codable {
    let status: String
    let data: AirQuality
}
