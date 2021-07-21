
extension Int { // расширили структуру int новым методом, чтобы число возвращало в квадрате. Не совсем понятно почему self
    
    func squared() -> Int {
        return self * self
    }
    
    func repetition(task: () -> Void) { // принимаем клоужер и выводим его от 0 до значения числа раз
        for _ in 0..<self {
            task()
        }
    }
    var isEven: Bool { // используем только геттер и поэтому его не пишем. Вычисляемое св-во
        return self % 2 == 0
    }
}

var someVal = 5
someVal.squared()
someVal.isEven
someVal.repetition {
    print("Rolling")
}
