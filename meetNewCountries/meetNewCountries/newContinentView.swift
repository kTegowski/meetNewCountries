//
//  newContinentView.swift
//  meetNewCountries
//
//  Created by Konrad  Tęgowski on 15/04/2023.
//

import SwiftUI
struct mainView: View{
    
    @State var changeView = false
    @State var numberOfCountries = 0
    @State var continentCode = ""
    var body: some View{
        if changeView == false{
            newContinentView(changeView: $changeView, numberOfCountries: $numberOfCountries, continentCode: $continentCode)
        }
        else{
            CountryInfoView(changeView: $changeView, continentCode: $continentCode, numberOfCountries: $numberOfCountries)
        }
        
    }
    
}
struct newContinentView: View {
    @State var continent = 0
    @State var number = 0
    @Binding var changeView: Bool
    @Binding var numberOfCountries : Int
    @Binding var continentCode: String
    var continents = ["Africa" : "AF", "Antarcitica" : "AN", "Asia":"AS", "Europe" : "EU","North America" : "NA", "Oceania" : "NA", "South America" : "SA"]
    var body: some View {
        VStack{
            Image("Continent_view")
                .padding(15.0)
            Spacer()
            HStack{
                Picker(selection: $continent, label: Text("Choose continent")) {
                    ForEach(0 ..< continents.count){
                        value in
                        Text(Array(continents.keys)[value])
                    }
                }
                .id(continent)
                .padding(15.0)
                Picker(selection:$number, label: Text("Choose number of countries")) {
                    ForEach(2 ..< 11) {
                        Text("\($0) ")
                    }
                    
                }
                .id(number)
                .padding(15.0)
                
            }
            Spacer()
            Button("Accept") {
                continentCode = Array(continents.values)[continent]
                numberOfCountries = (number+2)
                changeView = true
            }
            .padding(.bottom, 10.0)
            .buttonStyle(.borderedProminent)
            .tint(.green)
            Spacer()
            
        }
        .background(Color.white)
        }
    
    }

