struct menuItem {
    var itemUnits: Double = 2
    var itemName: String = ""
    var itemPrice: Double = 0.00
    var itemPurchasers: [String] = []
    var itemPricePerPerson: Double {
        get {
            return (itemUnits*itemPrice)/Double(itemPurchasers.count)
        }
    }
}

let item1 = menuItem(itemUnits: 2, itemName: "The Feature", itemPrice: 24, itemPurchasers: ["JWK","RK"])

let formatter = NSNumberFormatter()
formatter.numberStyle = .CurrencyStyle

formatter.stringFromNumber(item1.itemPricePerPerson)
