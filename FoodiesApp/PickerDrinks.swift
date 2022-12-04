//
//  PickerDrinks.swift
//  FoodiesApp
//
//  Created by Christophe on 03/12/2022.
//

import SwiftUI

struct PickerDrinks: View {
    @Binding var selected: Int
    var drinks: [String]
    var body: some View {
        Picker(drinks[selected], selection: $selected) {
            ForEach(0..<drinks.count, id: \.self) { drink in
                Text(drinks[drink]).tag(drink)
            }
        }
    }
}

struct PickerDrinks_Previews: PreviewProvider {
    static var previews: some View {
        PickerDrinks(selected: .constant(0), drinks: [])
    }
}
