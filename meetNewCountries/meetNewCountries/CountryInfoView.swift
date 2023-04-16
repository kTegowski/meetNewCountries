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
            
            countryView(countryname: "Poland", countryLanguage: "polish", countryEmoji: "🇵🇱", countryDescription: "it's a beautifull country")
                //print(continentCode)
                //Network.shared.apollo.fetch(query: Countries.GetCountriesByContinentQuery(code:)){
                 //   result in
                  //  let data = try? result.get().data

                
            //})
            Button("Back") {
                changeView = false
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
        }
    }
}

struct countryView:View{
     var countryname: String
     var countryLanguage: String
     var countryEmoji: String
  var countryDescription: String
    var body: some View{
        VStack{
            HStack{
                Text(countryname)
                Text(countryEmoji)
            }
            Text(countryDescription)
            HStack{
                Text("Language:")
                Text(countryLanguage)
            }
            
        }
    }
    
}

//struct CountryInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        CountryInfoView()
//    }
//}
