//
//  SliderCheese.swift
//  FoodiesApp
//
//  Created by Christophe on 04/12/2022.
//

import SwiftUI

struct SliderCheese: View {
    @Binding var cheese: Double
    var body: some View {
        VStack{
            HStack{
                Image("cheese")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("\(Int(cheese)) % de bonheur en plus")
            }
            Slider(value: $cheese, in: 0...100)
        }
    }
}

