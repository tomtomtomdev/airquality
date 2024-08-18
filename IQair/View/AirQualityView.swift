//
//  AirQualityView.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import SwiftUI

struct AirQualityView: View {
    @StateObject private var viewModel: AirQualityViewModel
    
    init(viewModel: AirQualityViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        VStack {
            if let airQuality = viewModel.airQuality {
                Text("Air Quality Index: \(airQuality.current.pollution.aqius)")
                Text("City: \(airQuality.city)")
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            viewModel.getAirQuality(for: "Los Angeles")
        }
    }
}
