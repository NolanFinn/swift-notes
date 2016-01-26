

var participants = ["JWK", "NBF"]

var numberOfParticpants = participants.count

struct menuItem {
    var itemUnits: Double = 1
    var itemName: String = ""
    var itemPrice: Double = 0.00
    var itemPricePerPerson: Double {
        get {
            return (itemUnits*itemPrice)/Double(participants.count)
        }
    }
}

let item1 = menuItem(itemUnits: 2, itemName: "The Feature", itemPrice: 8)

let formatter = NSNumberFormatter()
formatter.numberStyle = .CurrencyStyle

formatter.stringFromNumber(item1.itemPricePerPerson)
