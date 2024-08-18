//
//  MockGetCityAirQualityUseCase.swift
//  IQairTests
//
//  Created by tommy yohanes on 17/08/24.
//

import Foundation
import Combine
@testable import IQair

class MockGetCityAirQualityUseCase: GetCityAirQualityUseCase {
    func execute(city: String) -> AnyPublisher<IQair.AirQuality, any Error> {
        Just(
            AirQuality(
                city: "",
                state: "",
                country: "",
                location: Location(
                    type: "", coordinates: []
                ),
                forecasts: [],
                current: Current(
                    weather: Weather(
                        ts: "", tp: 0, pr: 0, hu: 0, ws: 0, wd: 0, ic: ""),
                    pollution: Pollution(
                        ts: "", aqius: 0, mainus: 0, aqicn: 0, maincn: 0,
                        pl: Pl(
                            conc: 0, aqius: 0, aqicn: 0)
                    )
                ),
                history: History(
                    weather: [], pollution: []
                ),
                units: Unit(
                    p2: "", p1: "", o3: "",
                    n2: "", s2: "", co: ""
                )
            )
        )
        .setFailureType(to: Error.self)
        .eraseToAnyPublisher()
    }
    
    static func success(_ quality: AirQuality) -> GetCityAirQualityUseCase {
        MockGetCityAirQualityUseCase()
    }
}
