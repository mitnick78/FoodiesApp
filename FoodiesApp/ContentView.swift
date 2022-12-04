//
//  ContentView.swift
//  FoodiesApp
//
//  Created by Christophe on 03/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isMenu: Bool = true
    @State var selectionMeat: Int = 0
    @State var gherkin: Int = 0
    @State var bacon: Int = 0
    @State var Ketchup: Bool = false
    @State var mustard: Bool = false
    @State var selectedDrink = 0
    @State var isBig: Bool = false
    @State var text: String = ""
    @State var number: String = ""
    @State var date: Date = Date()
    @State var cheese: Double = 50
    @State var recap: String = ""
    
    @FocusState var focus

    var meats: [String] = ["Boeuf", "Poulet", "Poisson", "Veggie"]
    var drinks:[String] = ["Soda", "Orange", "Citron", "Ice Tea", "Eau"]
    
    var body: some View {
        Form {
            Section("Composez votre commande") {
                ToogleMenu(isMenu: $isMenu)
                MeatImage(image: meats[selectionMeat])
                PickerMeat(meats: meats, selectionMeat: $selectionMeat)
                StepperCondiments(value: $gherkin, image: "gherkin")
                StepperCondiments(value: $bacon, image: "bacon")
                ToogleSauce(image: "ketchup", name: "Ketchup", sauce: $Ketchup)
                ToogleSauce(image: "mustard", name: "Moutard", sauce: $mustard)
                SliderCheese(cheese: $cheese)
            }
            
            if isMenu {
                Section("Pour le menu") {
                    PickerDrinks(selected: $selectedDrink, drinks: drinks)
                    ToogleFries(isBig: $isBig)
                }
            }
            
            Section("Information") {
                TextField("Nom de la commande", text: $text)
                HStack{
                    TextField("Numero de télephone", text: $number)
                        .keyboardType(.phonePad)
                        .focused($focus)
                    Button("OK") {
                        focus = false
                    }
                }
                DatePicker("heure", selection: $date, displayedComponents: .hourAndMinute)
            }
            
            Section("Récapitulatif") {
                Button("Je commande"){
                    var order = ""
                    order += text + " a commander pour \(dateConverter())"
                    order += isMenu ? " Menu " : " Burger Simple "
                    order += "\(meats[selectionMeat]) avec \(bacon) tranches de bacon et \(gherkin) tranches de cornichons.\n"
                    order += "\(Int(cheese)) % de fromage\n"
                    if Ketchup{
                        order += "Avec Ketchup.\n"
                    }
                    
                    if mustard{
                        order += "Avec Moutarde. \n"
                    }
                    
                    if isMenu{
                        order += "Boisson : \(drinks[selectedDrink])"
                        order += isBig ? "Grande Frites" : "Petite Frites"
                    }
                    
                    if let phone = Int(number) {
                        order += "Nous vous appelerons à ce numéro: \(phone)"
                    }
                    
                    
                    recap = order
                }
                Text(recap)
            }
        }
    }
    func dateConverter() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .medium
        formatter.locale = Locale(identifier: "fr-FR")
        let str = formatter.string(from: date)
        return str
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
