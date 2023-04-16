//
//  CountryInfoView.swift
//  meetNewCountries
//
//  Created by Konrad Tęgowski on 16/04/2023.
//

import SwiftUI

struct CountryInfoView: View {
    @Binding var changeView: Bool
    @Binding var continentCode : String
    @Binding var numberOfCountries : Int
    
    var body: some View {
        VStack{
            Text(continentCode)
            Button("Back") {
                changeView = false
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
        }
    }
}

//struct CountryInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        CountryInfoView()
//    }
//}
