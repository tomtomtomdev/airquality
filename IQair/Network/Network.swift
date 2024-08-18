//
//  Network.swift
//  IQair
//
//  Created by tommy yohanes on 17/08/24.
//

import Foundation
import Combine

struct NetworkService {
    func request<T: Decodable>(_ api: IQAirAPI) -> AnyPublisher<T, Error> {
        URLSession.shared.dataTaskPublisher(for: api.urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
