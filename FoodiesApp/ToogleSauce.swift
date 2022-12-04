//
//  ToogleSauce.swift
//  FoodiesApp
//
//  Created by Christophe on 03/12/2022.
//

import SwiftUI

struct ToogleSauce: View {
    var image: String
    var name: String
    @Binding var sauce: Bool
    
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .frame(width: 40, height: 40)
            Toggle(name, isOn: $sauce)
                .tint(image == "ketchup" ? .red : .yellow)
        }
    }
}

struct ToogleSauce_Previews: PreviewProvider {
    static var previews: some View {
        ToogleSauce(image: "ketchup", name: "ketchup", sauce: .constant(false))
    }
}
