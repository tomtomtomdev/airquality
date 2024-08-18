//
//  AirQualityViewModel.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Combine
import SwiftUI

class AirQualityViewModel: ObservableObject {
    private let getCityAirQualityUseCase: GetCityAirQualityUseCase
    private var cancellables = Set<AnyCancellable>()
    
    @Published var airQuality: AirQuality?
    @Published var errorMessage: String?
    
    init(getCityAirQualityUseCase: GetCityAirQualityUseCase) {
        self.getCityAirQualityUseCase = getCityAirQualityUseCase
    }
    
    func getAirQuality(for city: String) {
        getCityAirQualityUseCase.execute(city: city)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                case .finished:
                    break
                }
            }, receiveValue: { [weak self] airQuality in
                self?.airQuality = airQuality
            })
            .store(in: &cancellables)
    }
}
