//
//  Service.swift
//  meetNewCountries
//
//  Created by Konrad Tęgowski on 16/04/2023.
//

import Foundation
import Apollo


class Network{
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "https://countries.trevorblades.com/graphql")!)
    
    
    
}
