//
//  ToogleMenu.swift
//  FoodiesApp
//
//  Created by Christophe on 03/12/2022.
//

import SwiftUI

struct ToogleMenu: View {
    @Binding var isMenu: Bool
    var body: some View {
        Toggle(isMenu ? "Menu" : "Buger simple", isOn: $isMenu)
    }
}

struct ToogleMenu_Previews: PreviewProvider {
    static var previews: some View {
        ToogleMenu(isMenu: .constant(false))
    }
}
