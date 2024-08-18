//
//  IQAirAPI.swift
//  IQair
//
//  Created by tommy yohanes on 18/08/24.
//

import Foundation

enum IQAirAPI {
    case getCountries
    case getCityAirQuality(city: String)
    
    var baseURL: URL {
        URL(string: "https://api.airvisual.com/v2/")!
    }
    
    var path: String {
        switch self {
        case .getCountries:
            return "countries"
            
        case .getCityAirQuality(let city):
            return "city?city=\(city)"
        }
    }
    
    var urlRequest: URLRequest {
        let url = baseURL.appendingPathComponent(path)
            .appending(path: "&key=\(Constants.apiKey)")
        return URLRequest(url: url)
    }
}
