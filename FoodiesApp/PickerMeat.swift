//
//  PickerMeat.swift
//  FoodiesApp
//
//  Created by Christophe on 03/12/2022.
//

import SwiftUI

struct PickerMeat: View {
    var meats: [String]
    @Binding var selectionMeat: Int
    var body: some View {
        Picker("Choix de la viande", selection: $selectionMeat) {
            ForEach(0..<meats.count, id: \.self) { meal in
                Text(meats[meal]).tag(meal)
            }
        }.pickerStyle(.segmented)
    }
}

struct PickerMeat_Previews: PreviewProvider {
    static var previews: some View {
        PickerMeat(meats: [], selectionMeat: .constant(0))
    }
}
