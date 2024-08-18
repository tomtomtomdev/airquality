//
//  IQairTests.swift
//  IQairTests
//
//  Created by tommy yohanes on 17/08/24.
//

import XCTest
import Combine
@testable import IQair

class AirQualityViewModelTests: XCTestCase {
    var viewModel: AirQualityViewModel!
    var mockUseCase: MockGetCityAirQualityUseCase!
    var cancellables: Set<AnyCancellable>!
    
    override func setUp() {
        super.setUp()
        cancellables = []
        mockUseCase = MockGetCityAirQualityUseCase()
        viewModel = AirQualityViewModel(getCityAirQualityUseCase: mockUseCase)
    }
    
    override func tearDown() {
        cancellables = nil
        viewModel = nil
        mockUseCase = nil
        super.tearDown()
    }
    
    func testFetchAirQualitySuccess() {
        let airQuality = AirQuality(city: "Los Angeles", aqi: 50)
        mockUseCase.result = .success(airQuality)
        
        viewModel.getAirQuality(for: "Los Angeles")
        
        XCTAssertEqual(viewModel.airQuality?.city, "Los Angeles")
        XCTAssertEqual(viewModel.airQuality?.aqi, 50)
    }
    
    func testFetchAirQualityFailure() {
        let error = NSError(domain: "TestError", code: 0, userInfo: nil)
        mockUseCase.result = .failure(error)
        
        viewModel.getAirQuality(for: "Los Angeles")
        
        XCTAssertEqual(viewModel.errorMessage, error.localizedDescription)
    }
}
