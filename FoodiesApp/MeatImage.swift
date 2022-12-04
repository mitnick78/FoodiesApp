//
//  MeatImage.swift
//  FoodiesApp
//
//  Created by Christophe on 03/12/2022.
//

import SwiftUI

struct MeatImage: View {
    var image: String
    
    var body: some View {
        HStack{
            Spacer()
            Image(image)
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
        }
    }
}

struct MeatImage_Previews: PreviewProvider {
    static var previews: some View {
        MeatImage(image: "Boeuf")
    }
}
