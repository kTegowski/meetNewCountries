//
//  CountryInfoView.swift
//  meetNewCountries
//
//  Created by Konrad Tęgowski on 16/04/2023.
//

import SwiftUI

struct CountryInfoView: View {
    @Binding var changeView: Bool
    var body: some View {
        VStack{
            Text("Some info")
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
