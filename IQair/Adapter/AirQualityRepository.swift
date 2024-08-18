//
//  AirQualityRepository.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Combine

protocol AirQualityRepository {
    func fetchCityAirQuality(city: String) -> AnyPublisher<AllAirQualityResponse, Error>
}

class AirQualityRepositoryImpl: AirQualityRepository {
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
    func fetchCityAirQuality(city: String) -> AnyPublisher<AllAirQualityResponse, Error> {
        networkService.request(.getCityAirQuality(city: city))
    }
}
