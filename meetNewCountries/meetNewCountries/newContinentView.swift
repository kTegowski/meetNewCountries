//
//  newContinentView.swift
//  meetNewCountries
//
//  Created by Julia Szałwińska on 15/04/2023.
//

import SwiftUI

struct newContinentView: View {
    @State var continent = 0
    @State var numberOfCountries = 0
    var body: some View {
        VStack{
            Image("Continent_view")
            HStack{
                Picker(selection: $continent, label: Text("Choose continent")) {
                    Text("1").tag(1)
                    Text("2").tag(2)//add forEach
                }
                .id(continent)
                .padding(15.0)
                Picker(selection:$numberOfCountries, label: Text("Choose number of countries")) {
                    ForEach(2 ..< 11) {
                        Text("\($0) ")
                    }
                    
                }
                .id(numberOfCountries)
                .padding(15.0)
               
            }
            Spacer()
            Button("Accept") {
                //change to other view
            }
            .padding(.bottom, 10.0)
            Spacer()
            
        }
        .background(Color.white)
        }
    
    }

struct newContinentView_Previews: PreviewProvider {
    static var previews: some View {
        newContinentView()
    }
}
