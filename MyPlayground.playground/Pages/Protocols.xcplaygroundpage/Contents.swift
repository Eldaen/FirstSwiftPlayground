protocol ICanBuyIt { // Протокол эт как интерфейсы в PHP походу, список того, что должно быть в структурах/классах, кто к протоколу привязан
    var label: String { get set }
    var price: Int { get set }
}

struct Milk: ICanBuyIt {
    var label: String
    var price: Int
}

class Book: ICanBuyIt {
    
    var label: String
    var amount: Int
    var price: Int
    
    init(label: String, amount: Int, price: Int) {
        self.amount = amount
        self.label = label
        self.price = price
    }
}

struct Bread: ICanBuyIt {
    var label: String
    var price: Int
    var color: [String] // массив строк
}

func buy (_ item: ICanBuyIt) { // т.е. эта функция может принять любой класс/структуру, которая подписана на протокол ICanBuyIt и там точно будут нужные св-ва и методы
    print("I'm buying \(item.label), it costs me \(item.price) bucks..")
}


