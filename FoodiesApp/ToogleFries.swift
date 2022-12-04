//
//  ToogleFries.swift
//  FoodiesApp
//
//  Created by Christophe on 04/12/2022.
//

import SwiftUI

struct ToogleFries: View {
    @Binding var isBig: Bool
    
    var body: some View {
        HStack{
            Image("fries")
                .resizable()
                .frame(width: 40, height: 40)
            Toggle(isBig ? "Petite" : "Grande", isOn: $isBig)
        }
    }
}

