//
//  Forecast.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Foundation

struct Forecast: Codable {
    let ts: String
    let aqius: Int
    let aqicn: Int
    let tp: Int
    let tp_min: Int
    let pr: Int
    let hu: Int
    let ws: Int
    let wd: Int
    let ic: String
}
