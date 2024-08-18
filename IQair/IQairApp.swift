//
//  IQairApp.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import SwiftUI

@main
struct IQairApp: App {
    var body: some Scene {
        WindowGroup {
            AirQualityView(
                viewModel: AirQualityViewModel(
                    getCityAirQualityUseCase: GetCityAirQualityUseCaseImpl(
                        repository: AirQualityRepositoryImpl(
                            networkService: NetworkService()
                        )
                    )
                )
            )
        }
    }
}
