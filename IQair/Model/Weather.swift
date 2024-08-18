//
//  Weather.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Foundation

struct Weather: Codable {
    let ts: String
    let tp: Int
    let pr: Int
    let hu: Int
    let ws: Int
    let wd: Int
    let ic: String
}
