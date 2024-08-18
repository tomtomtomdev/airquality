//
//  GetCityAirQualityUseCase.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Combine

protocol GetCityAirQualityUseCase {
    func execute(city: String) -> AnyPublisher<AirQuality, Error>
}

class GetCityAirQualityUseCaseImpl: GetCityAirQualityUseCase {
    private let repository: AirQualityRepository
    
    init(repository: AirQualityRepository) {
        self.repository = repository
    }
    
    func execute(city: String) -> AnyPublisher<AirQuality, Error> {
        repository.fetchCityAirQuality(city: city)
            .map(\.data)
            .eraseToAnyPublisher()
    }
}
